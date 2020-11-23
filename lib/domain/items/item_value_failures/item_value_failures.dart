import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_value_failures.freezed.dart';

@freezed
abstract class ItemValueFailure<T> with _$ItemValueFailure<T> {
  const factory ItemValueFailure.invalidName({@required String failedValue}) =
      InvalidName<T>;

  const factory ItemValueFailure.invalidDescription({@required String failedValue}) =
      InvalidDescription<T>;

  const factory ItemValueFailure.invalidPrice({@required double failedValue}) =
      InvalidPrice<T>;

  const factory ItemValueFailure.invalidQuantity({@required int failedValue}) =
      InvalidQuantity<T>;


 const factory ItemValueFailure.invalidDeliveryFee({@required double failedValue}) =
      InvalidDeliveryFee<T>;

  const factory ItemValueFailure.invalidImage({@required String failedValue}) =
      InvalidImage<T>;

  const factory ItemValueFailure.invalidImageName({@required String failedValue}) =
    InvalidImageName<T>;

  const factory ItemValueFailure.multiline({@required String failedValue}) =
    Multiline<T>;

  const factory ItemValueFailure.invalidPurchasable({@required bool failedValue}) =
      InvalidPurchasable<T>;

  const factory ItemValueFailure.invalidImageLength({
    @required T failedValue,
    @required int max,
  }) = InvalidImageLength<T>;

  const factory ItemValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
  }) = ExceedingLength<T>;

  const factory ItemValueFailure.empty({
    @required T failedValue,
  }) = Empty<T>;
}