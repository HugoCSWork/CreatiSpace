
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workshop_value_failures.freezed.dart';


@freezed
abstract class WorkshopValueFailure<T> with _$WorkshopValueFailure<T> {
  const factory WorkshopValueFailure.invalidWorkshopName({@required String failedValue}) =
  InvalidWorkshopName<T>;

  const factory WorkshopValueFailure.invalidWorkshopDescription({@required String failedValue}) =
  InvalidWorkshopDescription<T>;

  const factory WorkshopValueFailure.invalidWorkshopDate({@required String failedValue}) =
  InvalidWorkshopDate<T>;

  const factory WorkshopValueFailure.invalidWorkshopTime({@required String failedValue}) =
  InvalidWorkshopTime<T>;

  const factory WorkshopValueFailure.invalidWorkshopRequirements({@required String failedValue}) =
  InvalidWorkshopRequirements<T>;

  const factory WorkshopValueFailure.invalidWorkshopPrice({@required double failedValue}) =
  InvalidWorkshopPrice<T>;

  const factory WorkshopValueFailure.invalidWorkshopDuration({@required double failedValue}) =
  InvalidWorkshopDuration<T>;
}