// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_item_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ImageItemPrimitiveTearOff {
  const _$ImageItemPrimitiveTearOff();

// ignore: unused_element
  _ImageItemPrimitive call(
      {@required UniqueId id,
      @required String url,
      @required String imageName}) {
    return _ImageItemPrimitive(
      id: id,
      url: url,
      imageName: imageName,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ImageItemPrimitive = _$ImageItemPrimitiveTearOff();

/// @nodoc
mixin _$ImageItemPrimitive {
  UniqueId get id;
  String get url;
  String get imageName;

  @JsonKey(ignore: true)
  $ImageItemPrimitiveCopyWith<ImageItemPrimitive> get copyWith;
}

/// @nodoc
abstract class $ImageItemPrimitiveCopyWith<$Res> {
  factory $ImageItemPrimitiveCopyWith(
          ImageItemPrimitive value, $Res Function(ImageItemPrimitive) then) =
      _$ImageItemPrimitiveCopyWithImpl<$Res>;
  $Res call({UniqueId id, String url, String imageName});
}

/// @nodoc
class _$ImageItemPrimitiveCopyWithImpl<$Res>
    implements $ImageItemPrimitiveCopyWith<$Res> {
  _$ImageItemPrimitiveCopyWithImpl(this._value, this._then);

  final ImageItemPrimitive _value;
  // ignore: unused_field
  final $Res Function(ImageItemPrimitive) _then;

  @override
  $Res call({
    Object id = freezed,
    Object url = freezed,
    Object imageName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      url: url == freezed ? _value.url : url as String,
      imageName: imageName == freezed ? _value.imageName : imageName as String,
    ));
  }
}

/// @nodoc
abstract class _$ImageItemPrimitiveCopyWith<$Res>
    implements $ImageItemPrimitiveCopyWith<$Res> {
  factory _$ImageItemPrimitiveCopyWith(
          _ImageItemPrimitive value, $Res Function(_ImageItemPrimitive) then) =
      __$ImageItemPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String url, String imageName});
}

/// @nodoc
class __$ImageItemPrimitiveCopyWithImpl<$Res>
    extends _$ImageItemPrimitiveCopyWithImpl<$Res>
    implements _$ImageItemPrimitiveCopyWith<$Res> {
  __$ImageItemPrimitiveCopyWithImpl(
      _ImageItemPrimitive _value, $Res Function(_ImageItemPrimitive) _then)
      : super(_value, (v) => _then(v as _ImageItemPrimitive));

  @override
  _ImageItemPrimitive get _value => super._value as _ImageItemPrimitive;

  @override
  $Res call({
    Object id = freezed,
    Object url = freezed,
    Object imageName = freezed,
  }) {
    return _then(_ImageItemPrimitive(
      id: id == freezed ? _value.id : id as UniqueId,
      url: url == freezed ? _value.url : url as String,
      imageName: imageName == freezed ? _value.imageName : imageName as String,
    ));
  }
}

/// @nodoc
class _$_ImageItemPrimitive extends _ImageItemPrimitive {
  const _$_ImageItemPrimitive(
      {@required this.id, @required this.url, @required this.imageName})
      : assert(id != null),
        assert(url != null),
        assert(imageName != null),
        super._();

  @override
  final UniqueId id;
  @override
  final String url;
  @override
  final String imageName;

  @override
  String toString() {
    return 'ImageItemPrimitive(id: $id, url: $url, imageName: $imageName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageItemPrimitive &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.imageName, imageName) ||
                const DeepCollectionEquality()
                    .equals(other.imageName, imageName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(imageName);

  @JsonKey(ignore: true)
  @override
  _$ImageItemPrimitiveCopyWith<_ImageItemPrimitive> get copyWith =>
      __$ImageItemPrimitiveCopyWithImpl<_ImageItemPrimitive>(this, _$identity);
}

abstract class _ImageItemPrimitive extends ImageItemPrimitive {
  const _ImageItemPrimitive._() : super._();
  const factory _ImageItemPrimitive(
      {@required UniqueId id,
      @required String url,
      @required String imageName}) = _$_ImageItemPrimitive;

  @override
  UniqueId get id;
  @override
  String get url;
  @override
  String get imageName;
  @override
  @JsonKey(ignore: true)
  _$ImageItemPrimitiveCopyWith<_ImageItemPrimitive> get copyWith;
}
