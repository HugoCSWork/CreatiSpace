

import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/workshop/workshop_value_failures/workshop_value_failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateWorkshopName(String input) {
  if (input.length >= 5 && input.length <= 30) {
    return right(input);
  } else {
    return left(
        ValueFailure.workshop(WorkshopValueFailure.invalidWorkshopName(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateWorkshopDate(String input) {
  if(input == '') {
    return left(ValueFailure.workshop(
        WorkshopValueFailure.invalidWorkshopDate(failedValue: input)));
  }

  DateTime now = new DateTime.now();
  var currentDate = DateTime.parse(input);

  if (currentDate.isAfter(now)) {
    return right(input);
  } else {
    return left(ValueFailure.workshop(
        WorkshopValueFailure.invalidWorkshopDate(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateWorkshopTime(String input) {
  if (input != '') {
    return right(input);
  } else {
    return left(ValueFailure.workshop(
        WorkshopValueFailure.invalidWorkshopTime(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateWorkshopDescription(String input) {
  if (input.length >= 5 && input.length <= 100) {
    return right(input);
  } else {
    return left(ValueFailure.workshop(
        WorkshopValueFailure.invalidWorkshopDescription(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateWorkshopRequirements(String input) {
  if (input.length >= 5 && input.length <= 100) {
    return right(input);
  } else {
    return left(ValueFailure.workshop(
        WorkshopValueFailure.invalidWorkshopRequirements(failedValue: input)));
  }
}

Either<ValueFailure<double>, double> validateWorkshopPrice(double input) {
  if (input >= 0 && input < 10000000) {
    return right(input);
  } else {
    return left(ValueFailure.workshop(
        WorkshopValueFailure.invalidWorkshopPrice(failedValue: input)));
  }
}

Either<ValueFailure<double>, double> validateWorkshopDuration(double input) {

  var validDurations = [0, 30, 60, 90, 120];
  if (validDurations.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.workshop(
        WorkshopValueFailure.invalidWorkshopDuration(failedValue: input)));
  }
}