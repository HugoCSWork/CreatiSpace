// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentFormTearOff {
  const _$PaymentFormTearOff();

// ignore: unused_element
  _PaymentForm call(
      {@required PaymentNumber paymentNumber,
      @required PaymentCVC paymentCVC,
      @required PaymentDate paymentDate}) {
    return _PaymentForm(
      paymentNumber: paymentNumber,
      paymentCVC: paymentCVC,
      paymentDate: paymentDate,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentForm = _$PaymentFormTearOff();

/// @nodoc
mixin _$PaymentForm {
  PaymentNumber get paymentNumber;
  PaymentCVC get paymentCVC;
  PaymentDate get paymentDate;

  $PaymentFormCopyWith<PaymentForm> get copyWith;
}

/// @nodoc
abstract class $PaymentFormCopyWith<$Res> {
  factory $PaymentFormCopyWith(
          PaymentForm value, $Res Function(PaymentForm) then) =
      _$PaymentFormCopyWithImpl<$Res>;
  $Res call(
      {PaymentNumber paymentNumber,
      PaymentCVC paymentCVC,
      PaymentDate paymentDate});
}

/// @nodoc
class _$PaymentFormCopyWithImpl<$Res> implements $PaymentFormCopyWith<$Res> {
  _$PaymentFormCopyWithImpl(this._value, this._then);

  final PaymentForm _value;
  // ignore: unused_field
  final $Res Function(PaymentForm) _then;

  @override
  $Res call({
    Object paymentNumber = freezed,
    Object paymentCVC = freezed,
    Object paymentDate = freezed,
  }) {
    return _then(_value.copyWith(
      paymentNumber: paymentNumber == freezed
          ? _value.paymentNumber
          : paymentNumber as PaymentNumber,
      paymentCVC:
          paymentCVC == freezed ? _value.paymentCVC : paymentCVC as PaymentCVC,
      paymentDate: paymentDate == freezed
          ? _value.paymentDate
          : paymentDate as PaymentDate,
    ));
  }
}

/// @nodoc
abstract class _$PaymentFormCopyWith<$Res>
    implements $PaymentFormCopyWith<$Res> {
  factory _$PaymentFormCopyWith(
          _PaymentForm value, $Res Function(_PaymentForm) then) =
      __$PaymentFormCopyWithImpl<$Res>;
  @override
  $Res call(
      {PaymentNumber paymentNumber,
      PaymentCVC paymentCVC,
      PaymentDate paymentDate});
}

/// @nodoc
class __$PaymentFormCopyWithImpl<$Res> extends _$PaymentFormCopyWithImpl<$Res>
    implements _$PaymentFormCopyWith<$Res> {
  __$PaymentFormCopyWithImpl(
      _PaymentForm _value, $Res Function(_PaymentForm) _then)
      : super(_value, (v) => _then(v as _PaymentForm));

  @override
  _PaymentForm get _value => super._value as _PaymentForm;

  @override
  $Res call({
    Object paymentNumber = freezed,
    Object paymentCVC = freezed,
    Object paymentDate = freezed,
  }) {
    return _then(_PaymentForm(
      paymentNumber: paymentNumber == freezed
          ? _value.paymentNumber
          : paymentNumber as PaymentNumber,
      paymentCVC:
          paymentCVC == freezed ? _value.paymentCVC : paymentCVC as PaymentCVC,
      paymentDate: paymentDate == freezed
          ? _value.paymentDate
          : paymentDate as PaymentDate,
    ));
  }
}

/// @nodoc
class _$_PaymentForm extends _PaymentForm {
  const _$_PaymentForm(
      {@required this.paymentNumber,
      @required this.paymentCVC,
      @required this.paymentDate})
      : assert(paymentNumber != null),
        assert(paymentCVC != null),
        assert(paymentDate != null),
        super._();

  @override
  final PaymentNumber paymentNumber;
  @override
  final PaymentCVC paymentCVC;
  @override
  final PaymentDate paymentDate;

  @override
  String toString() {
    return 'PaymentForm(paymentNumber: $paymentNumber, paymentCVC: $paymentCVC, paymentDate: $paymentDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentForm &&
            (identical(other.paymentNumber, paymentNumber) ||
                const DeepCollectionEquality()
                    .equals(other.paymentNumber, paymentNumber)) &&
            (identical(other.paymentCVC, paymentCVC) ||
                const DeepCollectionEquality()
                    .equals(other.paymentCVC, paymentCVC)) &&
            (identical(other.paymentDate, paymentDate) ||
                const DeepCollectionEquality()
                    .equals(other.paymentDate, paymentDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paymentNumber) ^
      const DeepCollectionEquality().hash(paymentCVC) ^
      const DeepCollectionEquality().hash(paymentDate);

  @override
  _$PaymentFormCopyWith<_PaymentForm> get copyWith =>
      __$PaymentFormCopyWithImpl<_PaymentForm>(this, _$identity);
}

abstract class _PaymentForm extends PaymentForm {
  const _PaymentForm._() : super._();
  const factory _PaymentForm(
      {@required PaymentNumber paymentNumber,
      @required PaymentCVC paymentCVC,
      @required PaymentDate paymentDate}) = _$_PaymentForm;

  @override
  PaymentNumber get paymentNumber;
  @override
  PaymentCVC get paymentCVC;
  @override
  PaymentDate get paymentDate;
  @override
  _$PaymentFormCopyWith<_PaymentForm> get copyWith;
}
