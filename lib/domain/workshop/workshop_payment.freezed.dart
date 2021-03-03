// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'workshop_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WorkshopPayment _$WorkshopPaymentFromJson(Map<String, dynamic> json) {
  return _WorkshopPayment.fromJson(json);
}

/// @nodoc
class _$WorkshopPaymentTearOff {
  const _$WorkshopPaymentTearOff();

// ignore: unused_element
  _WorkshopPayment call(
      {@required Map<String, dynamic> workshop,
      @required Map<String, dynamic> paymentIntentRes,
      @required String hasStarted}) {
    return _WorkshopPayment(
      workshop: workshop,
      paymentIntentRes: paymentIntentRes,
      hasStarted: hasStarted,
    );
  }

// ignore: unused_element
  WorkshopPayment fromJson(Map<String, Object> json) {
    return WorkshopPayment.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WorkshopPayment = _$WorkshopPaymentTearOff();

/// @nodoc
mixin _$WorkshopPayment {
  Map<String, dynamic> get workshop;
  Map<String, dynamic> get paymentIntentRes;
  String get hasStarted;

  Map<String, dynamic> toJson();
  $WorkshopPaymentCopyWith<WorkshopPayment> get copyWith;
}

/// @nodoc
abstract class $WorkshopPaymentCopyWith<$Res> {
  factory $WorkshopPaymentCopyWith(
          WorkshopPayment value, $Res Function(WorkshopPayment) then) =
      _$WorkshopPaymentCopyWithImpl<$Res>;
  $Res call(
      {Map<String, dynamic> workshop,
      Map<String, dynamic> paymentIntentRes,
      String hasStarted});
}

/// @nodoc
class _$WorkshopPaymentCopyWithImpl<$Res>
    implements $WorkshopPaymentCopyWith<$Res> {
  _$WorkshopPaymentCopyWithImpl(this._value, this._then);

  final WorkshopPayment _value;
  // ignore: unused_field
  final $Res Function(WorkshopPayment) _then;

  @override
  $Res call({
    Object workshop = freezed,
    Object paymentIntentRes = freezed,
    Object hasStarted = freezed,
  }) {
    return _then(_value.copyWith(
      workshop: workshop == freezed
          ? _value.workshop
          : workshop as Map<String, dynamic>,
      paymentIntentRes: paymentIntentRes == freezed
          ? _value.paymentIntentRes
          : paymentIntentRes as Map<String, dynamic>,
      hasStarted:
          hasStarted == freezed ? _value.hasStarted : hasStarted as String,
    ));
  }
}

/// @nodoc
abstract class _$WorkshopPaymentCopyWith<$Res>
    implements $WorkshopPaymentCopyWith<$Res> {
  factory _$WorkshopPaymentCopyWith(
          _WorkshopPayment value, $Res Function(_WorkshopPayment) then) =
      __$WorkshopPaymentCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, dynamic> workshop,
      Map<String, dynamic> paymentIntentRes,
      String hasStarted});
}

/// @nodoc
class __$WorkshopPaymentCopyWithImpl<$Res>
    extends _$WorkshopPaymentCopyWithImpl<$Res>
    implements _$WorkshopPaymentCopyWith<$Res> {
  __$WorkshopPaymentCopyWithImpl(
      _WorkshopPayment _value, $Res Function(_WorkshopPayment) _then)
      : super(_value, (v) => _then(v as _WorkshopPayment));

  @override
  _WorkshopPayment get _value => super._value as _WorkshopPayment;

  @override
  $Res call({
    Object workshop = freezed,
    Object paymentIntentRes = freezed,
    Object hasStarted = freezed,
  }) {
    return _then(_WorkshopPayment(
      workshop: workshop == freezed
          ? _value.workshop
          : workshop as Map<String, dynamic>,
      paymentIntentRes: paymentIntentRes == freezed
          ? _value.paymentIntentRes
          : paymentIntentRes as Map<String, dynamic>,
      hasStarted:
          hasStarted == freezed ? _value.hasStarted : hasStarted as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WorkshopPayment extends _WorkshopPayment {
  const _$_WorkshopPayment(
      {@required this.workshop,
      @required this.paymentIntentRes,
      @required this.hasStarted})
      : assert(workshop != null),
        assert(paymentIntentRes != null),
        assert(hasStarted != null),
        super._();

  factory _$_WorkshopPayment.fromJson(Map<String, dynamic> json) =>
      _$_$_WorkshopPaymentFromJson(json);

  @override
  final Map<String, dynamic> workshop;
  @override
  final Map<String, dynamic> paymentIntentRes;
  @override
  final String hasStarted;

  @override
  String toString() {
    return 'WorkshopPayment(workshop: $workshop, paymentIntentRes: $paymentIntentRes, hasStarted: $hasStarted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkshopPayment &&
            (identical(other.workshop, workshop) ||
                const DeepCollectionEquality()
                    .equals(other.workshop, workshop)) &&
            (identical(other.paymentIntentRes, paymentIntentRes) ||
                const DeepCollectionEquality()
                    .equals(other.paymentIntentRes, paymentIntentRes)) &&
            (identical(other.hasStarted, hasStarted) ||
                const DeepCollectionEquality()
                    .equals(other.hasStarted, hasStarted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workshop) ^
      const DeepCollectionEquality().hash(paymentIntentRes) ^
      const DeepCollectionEquality().hash(hasStarted);

  @override
  _$WorkshopPaymentCopyWith<_WorkshopPayment> get copyWith =>
      __$WorkshopPaymentCopyWithImpl<_WorkshopPayment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WorkshopPaymentToJson(this);
  }
}

abstract class _WorkshopPayment extends WorkshopPayment {
  const _WorkshopPayment._() : super._();
  const factory _WorkshopPayment(
      {@required Map<String, dynamic> workshop,
      @required Map<String, dynamic> paymentIntentRes,
      @required String hasStarted}) = _$_WorkshopPayment;

  factory _WorkshopPayment.fromJson(Map<String, dynamic> json) =
      _$_WorkshopPayment.fromJson;

  @override
  Map<String, dynamic> get workshop;
  @override
  Map<String, dynamic> get paymentIntentRes;
  @override
  String get hasStarted;
  @override
  _$WorkshopPaymentCopyWith<_WorkshopPayment> get copyWith;
}
