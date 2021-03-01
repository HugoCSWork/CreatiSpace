
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/workshop/value_objects.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workshop_dto.g.dart';
part 'workshop_dto.freezed.dart';

@freezed
abstract class WorkshopDto implements _$WorkshopDto {
  const WorkshopDto._();

  const factory WorkshopDto({
    @required String id,
    @required String userId,
    @required String timestamp,
    @required String workshopName,
    @required String workshopDescription,
    @required String workshopDate,
    @required String workshopRequirements,
    @required double workshopPrice,
    @required double workshopDuration,
  }) = _WorkshopDto;

  factory WorkshopDto.fromDomain(Workshop item, String userId, String timestamp) {
    return WorkshopDto(
        id: item.id.getOrCrash(),
        workshopName: item.workshopName.getOrCrash(),
        workshopDescription: item.workshopDescription.getOrCrash(),
        workshopDate: item.workshopDate.getOrCrash(),
        workshopRequirements: item.workshopRequirements.getOrCrash(),
        workshopPrice: item.workshopPrice.getOrCrash(),
        workshopDuration: item.workshopDuration.getOrCrash(),
        userId: userId,
        timestamp: timestamp
    );
  }

  Workshop toDomain() {
    return Workshop(
      id: UniqueId.fromUniqueString(id),
      workshopName: WorkshopName(workshopName),
      workshopDescription: WorkshopDescription(workshopDescription),
      workshopDate: WorkshopDate(workshopDate),
      workshopRequirements: WorkshopRequirements(workshopRequirements),
      workshopPrice: WorkshopPrice(workshopPrice),
      workshopDuration: WorkshopDuration(workshopDuration),
      userId: userId,
      timestamp: timestamp
    );
  }

  factory WorkshopDto.fromJson(Map<String, dynamic> json) =>
      _$WorkshopDtoFromJson(json);

  factory WorkshopDto.fromFirestore(DocumentSnapshot doc) {
    return WorkshopDto.fromJson(doc.data());
  }
}
