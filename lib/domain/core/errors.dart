import 'package:creatispace/domain/core/value_failures.dart';

class NotAuthenticatedError extends Error {}


class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() => Error.safeToString('Unrecoverable Failure Terminating. Error Message - $valueFailure');

}