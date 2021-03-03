import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workshop_payment.freezed.dart';
part 'workshop_payment.g.dart';

@freezed
abstract class WorkshopPayment implements _$WorkshopPayment {
  const factory WorkshopPayment({
    @required Map<String, dynamic> workshop,
    @required Map<String, dynamic> paymentIntentRes,
    @required String hasStarted
  }) = _WorkshopPayment;

  factory WorkshopPayment.fromJson(Map<String, dynamic> json) =>
      _$WorkshopPaymentFromJson(json);
  
  const WorkshopPayment._();
}
