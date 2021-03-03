import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/workshop/workshop_payment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workshop_payment_dto.g.dart';
part 'workshop_payment_dto.freezed.dart';


@freezed
abstract class WorkshopPaymentDto implements _$WorkshopPaymentDto {
  const WorkshopPaymentDto._();

  const factory WorkshopPaymentDto({
    @required Map<String, dynamic> workshop,
    @required Map<String, dynamic> paymentIntentRes,
    @required String hasStarted
  }) = _WorkshopPaymentDto;

  factory WorkshopPaymentDto.fromDomain(WorkshopPayment workshopPayment) {
    return WorkshopPaymentDto(
      workshop: workshopPayment.workshop,
      paymentIntentRes: workshopPayment.paymentIntentRes,
      hasStarted: workshopPayment.hasStarted
    );
  }

  WorkshopPayment toDomain() {
    return WorkshopPayment(
        workshop: workshop,
        paymentIntentRes: paymentIntentRes,
        hasStarted: hasStarted
    );
  }

  factory WorkshopPaymentDto.fromJson(Map<String, dynamic> json) =>
      _$WorkshopPaymentDtoFromJson(json);

  factory WorkshopPaymentDto.fromFirestore(DocumentSnapshot doc) =>
      WorkshopPaymentDto.fromJson(doc.data());
}
