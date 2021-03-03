// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'workshop_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WorkshopDto _$WorkshopDtoFromJson(Map<String, dynamic> json) {
  return _WorkshopDto.fromJson(json);
}

/// @nodoc
class _$WorkshopDtoTearOff {
  const _$WorkshopDtoTearOff();

// ignore: unused_element
  _WorkshopDto call(
      {@required String id,
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
      @required List<String> attendees}) {
    return _WorkshopDto(
      id: id,
      userId: userId,
      username: username,
      imageUrl: imageUrl,
      timestamp: timestamp,
      workshopName: workshopName,
      hasStarted: hasStarted,
      workshopDescription: workshopDescription,
      workshopDate: workshopDate,
      workshopTime: workshopTime,
      workshopRequirements: workshopRequirements,
      workshopPrice: workshopPrice,
      workshopDuration: workshopDuration,
      attendees: attendees,
    );
  }

// ignore: unused_element
  WorkshopDto fromJson(Map<String, Object> json) {
    return WorkshopDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WorkshopDto = _$WorkshopDtoTearOff();

/// @nodoc
mixin _$WorkshopDto {
  String get id;
  String get userId;
  String get username;
  String get imageUrl;
  String get timestamp;
  String get workshopName;
  String get hasStarted;
  String get workshopDescription;
  String get workshopDate;
  String get workshopTime;
  String get workshopRequirements;
  double get workshopPrice;
  double get workshopDuration;
  List<String> get attendees;

  Map<String, dynamic> toJson();
  $WorkshopDtoCopyWith<WorkshopDto> get copyWith;
}

/// @nodoc
abstract class $WorkshopDtoCopyWith<$Res> {
  factory $WorkshopDtoCopyWith(
          WorkshopDto value, $Res Function(WorkshopDto) then) =
      _$WorkshopDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String userId,
      String username,
      String imageUrl,
      String timestamp,
      String workshopName,
      String hasStarted,
      String workshopDescription,
      String workshopDate,
      String workshopTime,
      String workshopRequirements,
      double workshopPrice,
      double workshopDuration,
      List<String> attendees});
}

/// @nodoc
class _$WorkshopDtoCopyWithImpl<$Res> implements $WorkshopDtoCopyWith<$Res> {
  _$WorkshopDtoCopyWithImpl(this._value, this._then);

  final WorkshopDto _value;
  // ignore: unused_field
  final $Res Function(WorkshopDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object username = freezed,
    Object imageUrl = freezed,
    Object timestamp = freezed,
    Object workshopName = freezed,
    Object hasStarted = freezed,
    Object workshopDescription = freezed,
    Object workshopDate = freezed,
    Object workshopTime = freezed,
    Object workshopRequirements = freezed,
    Object workshopPrice = freezed,
    Object workshopDuration = freezed,
    Object attendees = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      username: username == freezed ? _value.username : username as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      timestamp: timestamp == freezed ? _value.timestamp : timestamp as String,
      workshopName: workshopName == freezed
          ? _value.workshopName
          : workshopName as String,
      hasStarted:
          hasStarted == freezed ? _value.hasStarted : hasStarted as String,
      workshopDescription: workshopDescription == freezed
          ? _value.workshopDescription
          : workshopDescription as String,
      workshopDate: workshopDate == freezed
          ? _value.workshopDate
          : workshopDate as String,
      workshopTime: workshopTime == freezed
          ? _value.workshopTime
          : workshopTime as String,
      workshopRequirements: workshopRequirements == freezed
          ? _value.workshopRequirements
          : workshopRequirements as String,
      workshopPrice: workshopPrice == freezed
          ? _value.workshopPrice
          : workshopPrice as double,
      workshopDuration: workshopDuration == freezed
          ? _value.workshopDuration
          : workshopDuration as double,
      attendees:
          attendees == freezed ? _value.attendees : attendees as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$WorkshopDtoCopyWith<$Res>
    implements $WorkshopDtoCopyWith<$Res> {
  factory _$WorkshopDtoCopyWith(
          _WorkshopDto value, $Res Function(_WorkshopDto) then) =
      __$WorkshopDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String userId,
      String username,
      String imageUrl,
      String timestamp,
      String workshopName,
      String hasStarted,
      String workshopDescription,
      String workshopDate,
      String workshopTime,
      String workshopRequirements,
      double workshopPrice,
      double workshopDuration,
      List<String> attendees});
}

/// @nodoc
class __$WorkshopDtoCopyWithImpl<$Res> extends _$WorkshopDtoCopyWithImpl<$Res>
    implements _$WorkshopDtoCopyWith<$Res> {
  __$WorkshopDtoCopyWithImpl(
      _WorkshopDto _value, $Res Function(_WorkshopDto) _then)
      : super(_value, (v) => _then(v as _WorkshopDto));

  @override
  _WorkshopDto get _value => super._value as _WorkshopDto;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object username = freezed,
    Object imageUrl = freezed,
    Object timestamp = freezed,
    Object workshopName = freezed,
    Object hasStarted = freezed,
    Object workshopDescription = freezed,
    Object workshopDate = freezed,
    Object workshopTime = freezed,
    Object workshopRequirements = freezed,
    Object workshopPrice = freezed,
    Object workshopDuration = freezed,
    Object attendees = freezed,
  }) {
    return _then(_WorkshopDto(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      username: username == freezed ? _value.username : username as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      timestamp: timestamp == freezed ? _value.timestamp : timestamp as String,
      workshopName: workshopName == freezed
          ? _value.workshopName
          : workshopName as String,
      hasStarted:
          hasStarted == freezed ? _value.hasStarted : hasStarted as String,
      workshopDescription: workshopDescription == freezed
          ? _value.workshopDescription
          : workshopDescription as String,
      workshopDate: workshopDate == freezed
          ? _value.workshopDate
          : workshopDate as String,
      workshopTime: workshopTime == freezed
          ? _value.workshopTime
          : workshopTime as String,
      workshopRequirements: workshopRequirements == freezed
          ? _value.workshopRequirements
          : workshopRequirements as String,
      workshopPrice: workshopPrice == freezed
          ? _value.workshopPrice
          : workshopPrice as double,
      workshopDuration: workshopDuration == freezed
          ? _value.workshopDuration
          : workshopDuration as double,
      attendees:
          attendees == freezed ? _value.attendees : attendees as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WorkshopDto extends _WorkshopDto {
  const _$_WorkshopDto(
      {@required this.id,
      @required this.userId,
      @required this.username,
      @required this.imageUrl,
      @required this.timestamp,
      @required this.workshopName,
      @required this.hasStarted,
      @required this.workshopDescription,
      @required this.workshopDate,
      @required this.workshopTime,
      @required this.workshopRequirements,
      @required this.workshopPrice,
      @required this.workshopDuration,
      @required this.attendees})
      : assert(id != null),
        assert(userId != null),
        assert(username != null),
        assert(imageUrl != null),
        assert(timestamp != null),
        assert(workshopName != null),
        assert(hasStarted != null),
        assert(workshopDescription != null),
        assert(workshopDate != null),
        assert(workshopTime != null),
        assert(workshopRequirements != null),
        assert(workshopPrice != null),
        assert(workshopDuration != null),
        assert(attendees != null),
        super._();

  factory _$_WorkshopDto.fromJson(Map<String, dynamic> json) =>
      _$_$_WorkshopDtoFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String username;
  @override
  final String imageUrl;
  @override
  final String timestamp;
  @override
  final String workshopName;
  @override
  final String hasStarted;
  @override
  final String workshopDescription;
  @override
  final String workshopDate;
  @override
  final String workshopTime;
  @override
  final String workshopRequirements;
  @override
  final double workshopPrice;
  @override
  final double workshopDuration;
  @override
  final List<String> attendees;

  @override
  String toString() {
    return 'WorkshopDto(id: $id, userId: $userId, username: $username, imageUrl: $imageUrl, timestamp: $timestamp, workshopName: $workshopName, hasStarted: $hasStarted, workshopDescription: $workshopDescription, workshopDate: $workshopDate, workshopTime: $workshopTime, workshopRequirements: $workshopRequirements, workshopPrice: $workshopPrice, workshopDuration: $workshopDuration, attendees: $attendees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkshopDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.workshopName, workshopName) ||
                const DeepCollectionEquality()
                    .equals(other.workshopName, workshopName)) &&
            (identical(other.hasStarted, hasStarted) ||
                const DeepCollectionEquality()
                    .equals(other.hasStarted, hasStarted)) &&
            (identical(other.workshopDescription, workshopDescription) ||
                const DeepCollectionEquality()
                    .equals(other.workshopDescription, workshopDescription)) &&
            (identical(other.workshopDate, workshopDate) ||
                const DeepCollectionEquality()
                    .equals(other.workshopDate, workshopDate)) &&
            (identical(other.workshopTime, workshopTime) ||
                const DeepCollectionEquality()
                    .equals(other.workshopTime, workshopTime)) &&
            (identical(other.workshopRequirements, workshopRequirements) ||
                const DeepCollectionEquality().equals(
                    other.workshopRequirements, workshopRequirements)) &&
            (identical(other.workshopPrice, workshopPrice) ||
                const DeepCollectionEquality()
                    .equals(other.workshopPrice, workshopPrice)) &&
            (identical(other.workshopDuration, workshopDuration) ||
                const DeepCollectionEquality()
                    .equals(other.workshopDuration, workshopDuration)) &&
            (identical(other.attendees, attendees) ||
                const DeepCollectionEquality()
                    .equals(other.attendees, attendees)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(workshopName) ^
      const DeepCollectionEquality().hash(hasStarted) ^
      const DeepCollectionEquality().hash(workshopDescription) ^
      const DeepCollectionEquality().hash(workshopDate) ^
      const DeepCollectionEquality().hash(workshopTime) ^
      const DeepCollectionEquality().hash(workshopRequirements) ^
      const DeepCollectionEquality().hash(workshopPrice) ^
      const DeepCollectionEquality().hash(workshopDuration) ^
      const DeepCollectionEquality().hash(attendees);

  @override
  _$WorkshopDtoCopyWith<_WorkshopDto> get copyWith =>
      __$WorkshopDtoCopyWithImpl<_WorkshopDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WorkshopDtoToJson(this);
  }
}

abstract class _WorkshopDto extends WorkshopDto {
  const _WorkshopDto._() : super._();
  const factory _WorkshopDto(
      {@required String id,
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
      @required List<String> attendees}) = _$_WorkshopDto;

  factory _WorkshopDto.fromJson(Map<String, dynamic> json) =
      _$_WorkshopDto.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get username;
  @override
  String get imageUrl;
  @override
  String get timestamp;
  @override
  String get workshopName;
  @override
  String get hasStarted;
  @override
  String get workshopDescription;
  @override
  String get workshopDate;
  @override
  String get workshopTime;
  @override
  String get workshopRequirements;
  @override
  double get workshopPrice;
  @override
  double get workshopDuration;
  @override
  List<String> get attendees;
  @override
  _$WorkshopDtoCopyWith<_WorkshopDto> get copyWith;
}
