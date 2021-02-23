// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) {
  return _PaymentResponse.fromJson(json);
}

/// @nodoc
class _$PaymentResponseTearOff {
  const _$PaymentResponseTearOff();

// ignore: unused_element
  _PaymentResponse call(
      {@required String account_id, @required String person_id}) {
    return _PaymentResponse(
      account_id: account_id,
      person_id: person_id,
    );
  }

// ignore: unused_element
  PaymentResponse fromJson(Map<String, Object> json) {
    return PaymentResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentResponse = _$PaymentResponseTearOff();

/// @nodoc
mixin _$PaymentResponse {
  String get account_id;
  String get person_id;

  Map<String, dynamic> toJson();
  $PaymentResponseCopyWith<PaymentResponse> get copyWith;
}

/// @nodoc
abstract class $PaymentResponseCopyWith<$Res> {
  factory $PaymentResponseCopyWith(
          PaymentResponse value, $Res Function(PaymentResponse) then) =
      _$PaymentResponseCopyWithImpl<$Res>;
  $Res call({String account_id, String person_id});
}

/// @nodoc
class _$PaymentResponseCopyWithImpl<$Res>
    implements $PaymentResponseCopyWith<$Res> {
  _$PaymentResponseCopyWithImpl(this._value, this._then);

  final PaymentResponse _value;
  // ignore: unused_field
  final $Res Function(PaymentResponse) _then;

  @override
  $Res call({
    Object account_id = freezed,
    Object person_id = freezed,
  }) {
    return _then(_value.copyWith(
      account_id:
          account_id == freezed ? _value.account_id : account_id as String,
      person_id: person_id == freezed ? _value.person_id : person_id as String,
    ));
  }
}

/// @nodoc
abstract class _$PaymentResponseCopyWith<$Res>
    implements $PaymentResponseCopyWith<$Res> {
  factory _$PaymentResponseCopyWith(
          _PaymentResponse value, $Res Function(_PaymentResponse) then) =
      __$PaymentResponseCopyWithImpl<$Res>;
  @override
  $Res call({String account_id, String person_id});
}

/// @nodoc
class __$PaymentResponseCopyWithImpl<$Res>
    extends _$PaymentResponseCopyWithImpl<$Res>
    implements _$PaymentResponseCopyWith<$Res> {
  __$PaymentResponseCopyWithImpl(
      _PaymentResponse _value, $Res Function(_PaymentResponse) _then)
      : super(_value, (v) => _then(v as _PaymentResponse));

  @override
  _PaymentResponse get _value => super._value as _PaymentResponse;

  @override
  $Res call({
    Object account_id = freezed,
    Object person_id = freezed,
  }) {
    return _then(_PaymentResponse(
      account_id:
          account_id == freezed ? _value.account_id : account_id as String,
      person_id: person_id == freezed ? _value.person_id : person_id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PaymentResponse extends _PaymentResponse {
  const _$_PaymentResponse(
      {@required this.account_id, @required this.person_id})
      : assert(account_id != null),
        assert(person_id != null),
        super._();

  factory _$_PaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentResponseFromJson(json);

  @override
  final String account_id;
  @override
  final String person_id;

  @override
  String toString() {
    return 'PaymentResponse(account_id: $account_id, person_id: $person_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentResponse &&
            (identical(other.account_id, account_id) ||
                const DeepCollectionEquality()
                    .equals(other.account_id, account_id)) &&
            (identical(other.person_id, person_id) ||
                const DeepCollectionEquality()
                    .equals(other.person_id, person_id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(account_id) ^
      const DeepCollectionEquality().hash(person_id);

  @override
  _$PaymentResponseCopyWith<_PaymentResponse> get copyWith =>
      __$PaymentResponseCopyWithImpl<_PaymentResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentResponseToJson(this);
  }
}

abstract class _PaymentResponse extends PaymentResponse {
  const _PaymentResponse._() : super._();
  const factory _PaymentResponse(
      {@required String account_id,
      @required String person_id}) = _$_PaymentResponse;

  factory _PaymentResponse.fromJson(Map<String, dynamic> json) =
      _$_PaymentResponse.fromJson;

  @override
  String get account_id;
  @override
  String get person_id;
  @override
  _$PaymentResponseCopyWith<_PaymentResponse> get copyWith;
}
