import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/auth/auth_error/auth_error_failures.dart';
import 'package:creatispace/domain/auth/i_auth_facade.dart';
import 'package:creatispace/domain/auth/user/user.dart';
import 'package:creatispace/domain/auth/value_objects.dart';
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
    } on FirebaseAuthException catch (e) {
      print(e.message);
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
        for (var element in querySnapshot.docs) {
          if (element.data()['username'] == usernameStr) {
            isDuplicate = true;
            return left(const AuthErrorFailure.emailAlreadyInUse());
          }
        }
      });

      if(isDuplicate) {
        return left(const AuthErrorFailure.emailAlreadyInUse());
      } else {
        await _auth.createUserWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
      await _auth.currentUser.sendEmailVerification();
      await _firebaseFirestore
          .collection('users')
          .doc(_auth.currentUser.uid)
          .set({'username': usernameStr});
        return right(unit);
      }


      // return right(unit);
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
      await _auth.signInWithCredential(authCredential);

      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthErrorFailure.serviceError());
    }
  }

  @override
  Future<Option<CurrentUser>> getSignedInUser() async =>
      optionOf(_auth.currentUser?.toDomain());

  @override
  Future<void> signOut() => Future.wait([
        _auth.signOut(),
        _googleSignIn.signOut(),
      ]);
}
