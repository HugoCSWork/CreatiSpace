import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/items/item_image/item_image.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:creatispace/domain/workshop/value_objects.dart';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'workshop.freezed.dart';

@freezed
abstract class Workshop implements _$Workshop {
  const factory Workshop({
    @required UniqueId id,
    @required WorkshopName workshopName,
    @required WorkshopDescription workshopDescription,
    @required WorkshopDate workshopDate,
    @required WorkshopRequirements workshopRequirements,
    @required WorkshopPrice workshopPrice,
    @required WorkshopDuration workshopDuration,
    @required String userId,
    @required String timestamp
  }) = _Workshop;

  const Workshop._();

  factory Workshop.empty() => Workshop(
      id: UniqueId(),
      userId: '',
      timestamp: '',
      workshopName: WorkshopName(''),
      workshopDescription: WorkshopDescription(''),
      workshopDate: WorkshopDate(''),
      workshopPrice: WorkshopPrice(0),
      workshopDuration: WorkshopDuration(0),
      workshopRequirements: WorkshopRequirements('')
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return workshopName.failureOrUnit
        .andThen(workshopDescription.failureOrUnit)
        .andThen(workshopRequirements.failureOrUnit)
        .andThen(workshopPrice.failureOrUnit)
        .andThen(workshopDuration.failureOrUnit)
        .andThen(workshopDate.failureOrUnit)
        .fold((l) => some(l), (_) => none());
  }
}
