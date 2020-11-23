
import 'package:creatispace/domain/core/errors.dart';
import 'package:creatispace/domain/core/value_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

// id = identity - same as writing (r) => r
  T getOrCrash() => value.fold((f) => throw UnexpectedValueError(f), id);
  
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }


  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is ValueObject<T> &&
              runtimeType == other.runtimeType &&
              value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'Value{value: $value}';
  }
  
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      right(Uuid().v1()),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}