import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_response.freezed.dart';
part 'payment_response.g.dart';

@freezed
abstract class PaymentResponse implements _$PaymentResponse {
  const factory PaymentResponse({
    @required String account_id,
    @required String person_id,
  }) = _PaymentResponse;

  const PaymentResponse._();

  factory PaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseFromJson(json);
}