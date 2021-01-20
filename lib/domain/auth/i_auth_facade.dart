import 'package:creatispace/domain/auth/auth_error/auth_error_failures.dart';
import 'package:creatispace/domain/auth/user/user.dart';
import 'package:creatispace/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

abstract class IAuthFacade {

  Future<Either<AuthErrorFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
    @required Username username,
  });

  Future<Either<AuthErrorFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthErrorFailure, Unit>> signInWithGoogle();

  Future<Either<AuthErrorFailure, Unit>> passwordReset({
    @required EmailAddress emailAddress,
  });

  Future<void> sendEmailVerification();

  Future<Option<CurrentUser>> getSignedInUser();

  Stream<bool> getPasswordVerificationForUser();

  Future<void> signOut();
}