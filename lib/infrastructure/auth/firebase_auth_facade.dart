import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/auth/auth_error/auth_error_failures.dart';
import 'package:creatispace/domain/auth/i_auth_facade.dart';
import 'package:creatispace/domain/auth/user/user.dart';
import 'package:creatispace/domain/auth/value_objects.dart';
import 'package:creatispace/infrastructure/core/firestore_helpers.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import './firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firebaseFirestore;

  FirebaseAuthFacade(this._auth, this._googleSignIn, this._firebaseFirestore);

  @override
  Future<Either<AuthErrorFailure, Unit>> passwordReset(
      {EmailAddress emailAddress}) async {
    final emailAddressStr = emailAddress.getOrCrash().trim();
    try {
      await _auth.sendPasswordResetEmail(email: emailAddressStr);
      return right(unit);
    } on FirebaseAuthException {
      return left(const AuthErrorFailure.emailAlreadyInUse());
    }
  }

  @override
  Future<Either<AuthErrorFailure, Unit>> registerWithEmailAndPassword(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required Username username}) async {
    final emailAddressStr = emailAddress.getOrCrash().trim();
    final passwordStr = password.getOrCrash().trim();
    final usernameStr = username.getOrCrash().trim();
    bool isDuplicate = false;
    try {
      await _firebaseFirestore.collection('users').get().then((querySnapshot) {
        for (final element in querySnapshot.docs) {
          if (element.data()['username'] == usernameStr) {
            isDuplicate = true;
            return left(const AuthErrorFailure.emailAlreadyInUse());
          }
        }
      });

      if (isDuplicate) {
        return left(const AuthErrorFailure.emailAlreadyInUse());
      } else {
        await _auth.createUserWithEmailAndPassword(
            email: emailAddressStr, password: passwordStr);
        await _auth.currentUser.sendEmailVerification();
        await _firebaseFirestore
            .collection('users')
            .doc(_auth.currentUser.uid)
            .set(
              {
                'id': _auth.currentUser.uid,
                'username': usernameStr,
                'followers' : 0,
                "following" : 0,
                "profileImageURL": "https://firebasestorage.googleapis.com/v0/b/creatispace-dd05f.appspot.com/o/placeholders%2Fplaceholder_profile_male.jpg?alt=media&token=4dbf42ca-cbd9-4b7e-9c97-e5c4742428f0",
                "backgroundImageURL": "https://firebasestorage.googleapis.com/v0/b/creatispace-dd05f.appspot.com/o/placeholders%2Fjason-leung-479251-unsplash.jpg?alt=media&token=408b1965-795d-42e8-b91b-7a7e1b35fbb1"
              }
            );
        return right(unit);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthErrorFailure.emailAlreadyInUse());
      } else {
        return left(const AuthErrorFailure.serviceError());
      }
    }
  }

  @override
  Future<Either<AuthErrorFailure, Unit>> signInWithEmailAndPassword(
      {@required EmailAddress emailAddress,
      @required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash().trim();
    final passwordStr = password.getOrCrash().trim();
    try {
      await _auth.signInWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' ||
          e.code == 'invalid-email' ||
          e.code == 'wrong-password') {
        return left(const AuthErrorFailure.invalidEmailAndPassword());
      } else {
        return left(const AuthErrorFailure.serviceError());
      }
    }
  }

  @override
  Future<Either<AuthErrorFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthErrorFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
          accessToken: googleAuthentication.accessToken,
          idToken: googleAuthentication.idToken);
      
      UserCredential user =  await _auth.signInWithCredential(authCredential);
      final userDoc = await _firebaseFirestore.userDocument();
      var options = (await userDoc.get()).data();
      if(options == null || options["username"] == null) {
        if(user.additionalUserInfo.isNewUser) {
          await _auth.currentUser.sendEmailVerification();
        }
        int min = 100000;
        int max = 999999;
        var randomizer = new Random();
        var rNum = min + randomizer.nextInt(max - min);
        await _firebaseFirestore
            .collection('users')
            .doc(_auth.currentUser.uid)
              .set(
                {
                  'id': _auth.currentUser.uid,
                  'username': "new_user${rNum}",
                  'followers' : 0,
                  "following" : 0,
                  "profileImageURL": "https://firebasestorage.googleapis.com/v0/b/creatispace-dd05f.appspot.com/o/placeholders%2Fplaceholder_profile_male.jpg?alt=media&token=4dbf42ca-cbd9-4b7e-9c97-e5c4742428f0",
                  "backgroundImageURL": "https://firebasestorage.googleapis.com/v0/b/creatispace-dd05f.appspot.com/o/placeholders%2Fjason-leung-479251-unsplash.jpg?alt=media&token=408b1965-795d-42e8-b91b-7a7e1b35fbb1"
                }
              );
      }


      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthErrorFailure.serviceError());
    }
  }

  @override
  Future<Option<CurrentUser>> getSignedInUser() async =>
      optionOf(_auth.currentUser?.toDomain());

  @override
  Stream<bool> getPasswordVerificationForUser() async* {
    User user = _auth.currentUser;
    if (user != null) await user.reload();
    if (user == null) {
      yield false;
    } else {
      await user.reload();

      if (user.emailVerified)
        yield true;
      else
        yield false;
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _auth.signOut(),
        _googleSignIn.signOut(),
      ]);

  @override
  Future<void> sendEmailVerification() => Future.wait([
     _auth.currentUser.sendEmailVerification()
  ]);
}