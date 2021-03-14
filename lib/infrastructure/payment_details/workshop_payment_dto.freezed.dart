// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'workshop_payment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WorkshopPaymentDto _$WorkshopPaymentDtoFromJson(Map<String, dynamic> json) {
  return _WorkshopPaymentDto.fromJson(json);
}

/// @nodoc
class _$WorkshopPaymentDtoTearOff {
  const _$WorkshopPaymentDtoTearOff();

// ignore: unused_element
  _WorkshopPaymentDto call(
      {@required Map<String, dynamic> workshop,
      @required Map<String, dynamic> paymentIntentRes,
      @required String hasStarted}) {
    return _WorkshopPaymentDto(
      workshop: workshop,
      paymentIntentRes: paymentIntentRes,
      hasStarted: hasStarted,
    );
  }

// ignore: unused_element
  WorkshopPaymentDto fromJson(Map<String, Object> json) {
    return WorkshopPaymentDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WorkshopPaymentDto = _$WorkshopPaymentDtoTearOff();

/// @nodoc
mixin _$WorkshopPaymentDto {
  Map<String, dynamic> get workshop;
  Map<String, dynamic> get paymentIntentRes;
  String get hasStarted;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $WorkshopPaymentDtoCopyWith<WorkshopPaymentDto> get copyWith;
}

/// @nodoc
abstract class $WorkshopPaymentDtoCopyWith<$Res> {
  factory $WorkshopPaymentDtoCopyWith(
          WorkshopPaymentDto value, $Res Function(WorkshopPaymentDto) then) =
      _$WorkshopPaymentDtoCopyWithImpl<$Res>;
  $Res call(
      {Map<String, dynamic> workshop,
      Map<String, dynamic> paymentIntentRes,
      String hasStarted});
}

/// @nodoc
class _$WorkshopPaymentDtoCopyWithImpl<$Res>
    implements $WorkshopPaymentDtoCopyWith<$Res> {
  _$WorkshopPaymentDtoCopyWithImpl(this._value, this._then);

  final WorkshopPaymentDto _value;
  // ignore: unused_field
  final $Res Function(WorkshopPaymentDto) _then;

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
abstract class _$WorkshopPaymentDtoCopyWith<$Res>
    implements $WorkshopPaymentDtoCopyWith<$Res> {
  factory _$WorkshopPaymentDtoCopyWith(
          _WorkshopPaymentDto value, $Res Function(_WorkshopPaymentDto) then) =
      __$WorkshopPaymentDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, dynamic> workshop,
      Map<String, dynamic> paymentIntentRes,
      String hasStarted});
}

/// @nodoc
class __$WorkshopPaymentDtoCopyWithImpl<$Res>
    extends _$WorkshopPaymentDtoCopyWithImpl<$Res>
    implements _$WorkshopPaymentDtoCopyWith<$Res> {
  __$WorkshopPaymentDtoCopyWithImpl(
      _WorkshopPaymentDto _value, $Res Function(_WorkshopPaymentDto) _then)
      : super(_value, (v) => _then(v as _WorkshopPaymentDto));

  @override
  _WorkshopPaymentDto get _value => super._value as _WorkshopPaymentDto;

  @override
  $Res call({
    Object workshop = freezed,
    Object paymentIntentRes = freezed,
    Object hasStarted = freezed,
  }) {
    return _then(_WorkshopPaymentDto(
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
class _$_WorkshopPaymentDto extends _WorkshopPaymentDto {
  const _$_WorkshopPaymentDto(
      {@required this.workshop,
      @required this.paymentIntentRes,
      @required this.hasStarted})
      : assert(workshop != null),
        assert(paymentIntentRes != null),
        assert(hasStarted != null),
        super._();

  factory _$_WorkshopPaymentDto.fromJson(Map<String, dynamic> json) =>
      _$_$_WorkshopPaymentDtoFromJson(json);

  @override
  final Map<String, dynamic> workshop;
  @override
  final Map<String, dynamic> paymentIntentRes;
  @override
  final String hasStarted;

  @override
  String toString() {
    return 'WorkshopPaymentDto(workshop: $workshop, paymentIntentRes: $paymentIntentRes, hasStarted: $hasStarted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkshopPaymentDto &&
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

  @JsonKey(ignore: true)
  @override
  _$WorkshopPaymentDtoCopyWith<_WorkshopPaymentDto> get copyWith =>
      __$WorkshopPaymentDtoCopyWithImpl<_WorkshopPaymentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WorkshopPaymentDtoToJson(this);
  }
}

abstract class _WorkshopPaymentDto extends WorkshopPaymentDto {
  const _WorkshopPaymentDto._() : super._();
  const factory _WorkshopPaymentDto(
      {@required Map<String, dynamic> workshop,
      @required Map<String, dynamic> paymentIntentRes,
      @required String hasStarted}) = _$_WorkshopPaymentDto;

  factory _WorkshopPaymentDto.fromJson(Map<String, dynamic> json) =
      _$_WorkshopPaymentDto.fromJson;

  @override
  Map<String, dynamic> get workshop;
  @override
  Map<String, dynamic> get paymentIntentRes;
  @override
  String get hasStarted;
  @override
  @JsonKey(ignore: true)
  _$WorkshopPaymentDtoCopyWith<_WorkshopPaymentDto> get copyWith;
}
