import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/workshop/workshop_validators.dart';
import 'package:dartz/dartz.dart';

class WorkshopName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory WorkshopName(String input) {
    assert(input != null);
    return WorkshopName._(validateWorkshopName(input));
  }

  const WorkshopName._(this.value);
}


class WorkshopDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory WorkshopDescription(String input) {
    assert(input != null);
    return WorkshopDescription._(validateWorkshopDescription(input));
  }

  const WorkshopDescription._(this.value);
}

class WorkshopRequirements extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory WorkshopRequirements(String input) {
    assert(input != null);
    return WorkshopRequirements._(validateWorkshopRequirements(input));
  }

  const WorkshopRequirements._(this.value);
}

class WorkshopDate extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory WorkshopDate(String input) {
    assert(input != null);
    return WorkshopDate._(validateWorkshopDate(input));
  }

  const WorkshopDate._(this.value);
}

class WorkshopPrice extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory WorkshopPrice(double input) {
    assert(input != null);
    return WorkshopPrice._(validateWorkshopPrice(input));
  }

  const WorkshopPrice._(this.value);
}

class WorkshopDuration extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory WorkshopDuration(double input) {
    assert(input != null);
    return WorkshopDuration._(validateWorkshopDuration(input));
  }

  const WorkshopDuration._(this.value);
}

