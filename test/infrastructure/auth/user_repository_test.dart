import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/auth/auth_error/auth_error_failures.dart';
import 'package:creatispace/domain/auth/value_objects.dart';
import 'package:creatispace/infrastructure/auth/firebase_auth_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';

class MockFirebaseAuth extends Mock implements FirebaseAuth {}
class MockFirebaseGoogleSignIn extends Mock implements GoogleSignIn {}
class MockFirebaseFirestore extends Mock implements FirebaseFirestore {}
class MockFirebaseUser extends Mock implements User{}
class MockFirebaseUserCredential extends Mock implements UserCredential{}

Future<Either<AuthErrorFailure, Unit>> getResult(bool isSuccessful) async {
  if(isSuccessful) {
    return right(unit);
  } else {
    return left(AuthErrorFailure.serviceError());
  }
}

void main() {
  MockFirebaseAuth _auth = MockFirebaseAuth();
  MockFirebaseFirestore _firebaseFirestore = MockFirebaseFirestore();
  MockFirebaseGoogleSignIn _firebaseGoogleSignIn = MockFirebaseGoogleSignIn();
  BehaviorSubject<MockFirebaseUser> _user = BehaviorSubject<MockFirebaseUser>();
  FirebaseAuthFacade authFacade = FirebaseAuthFacade(_auth, _firebaseGoogleSignIn, _firebaseFirestore);
  final EmailAddress email = EmailAddress('test@test.com');
  final Password password = Password('TestPassword1!');

  group('user repository test', () {
    test('sign in with email and password success', () async {
      when(_auth.signInWithEmailAndPassword(email: email.getOrCrash(), password: password.getOrCrash()))
          .thenAnswer((_) async {
        _user.add(MockFirebaseUser());
        return MockFirebaseUserCredential();
      });

      var isSignedIn = await authFacade.signInWithEmailAndPassword(emailAddress: email, password: password);
      expect(isSignedIn, await getResult(true));
    });
    test('sign in with email and password failed', () async {
      when(_auth.signInWithEmailAndPassword(email: email.getOrCrash(), password: password.getOrCrash()))
          .thenThrow(new FirebaseAuthException(message: "error", code: "400"));

      var isSignedIn = await authFacade.signInWithEmailAndPassword(emailAddress: email, password: password);
      expect(isSignedIn, await getResult(false));
    });
  });
}