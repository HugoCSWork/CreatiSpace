
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
    @required String username,
    @required String imageUrl,
    @required String timestamp,
    @required String workshopName,
    @required String hasStarted,
    @required String workshopDescription,
    @required String workshopDate,
    @required String workshopTime,
    @required String workshopRequirements,
    @required double workshopPrice,
    @required double workshopDuration,
    @required List<String> attendees
  }) = _WorkshopDto;

  factory WorkshopDto.fromDomain(Workshop item, String userId, String timestamp, String username, String imageUrl) {
    return WorkshopDto(
        id: item.id.getOrCrash(),
        workshopName: item.workshopName.getOrCrash(),
        workshopDescription: item.workshopDescription.getOrCrash(),
        workshopDate: item.workshopDate.getOrCrash(),
        workshopTime: item.workshopTime.getOrCrash(),
        workshopRequirements: item.workshopRequirements.getOrCrash(),
        workshopPrice: item.workshopPrice.getOrCrash(),
        workshopDuration: item.workshopDuration.getOrCrash(),
        attendees: item.attendees,
        userId: userId,
        hasStarted: item.hasStarted,
        timestamp: timestamp,
        username: username,
        imageUrl: imageUrl
    );
  }

  Workshop toDomain() {
    return Workshop(
      id: UniqueId.fromUniqueString(id),
      workshopName: WorkshopName(workshopName),
      workshopDescription: WorkshopDescription(workshopDescription),
      workshopDate: WorkshopDate(workshopDate),
      workshopTime: WorkshopTime(workshopTime),
      workshopRequirements: WorkshopRequirements(workshopRequirements),
      workshopPrice: WorkshopPrice(workshopPrice),
      workshopDuration: WorkshopDuration(workshopDuration),
      attendees: attendees,
      userId: userId,
      hasStarted: hasStarted,
      timestamp: timestamp,
      username: username,
      profileImage: imageUrl
    );
  }

  factory WorkshopDto.fromJson(Map<String, dynamic> json) =>
      _$WorkshopDtoFromJson(json);

  factory WorkshopDto.fromFirestore(DocumentSnapshot doc) {
    return WorkshopDto.fromJson(doc.data());
  }
}
