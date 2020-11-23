// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$IndividualImagesTearOff {
  const _$IndividualImagesTearOff();

// ignore: unused_element
  _IndividualImages call(
      {@required UniqueId id,
      @required ItemImage url,
      @required ItemImageName imageName}) {
    return _IndividualImages(
      id: id,
      url: url,
      imageName: imageName,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $IndividualImages = _$IndividualImagesTearOff();

/// @nodoc
mixin _$IndividualImages {
  UniqueId get id;
  ItemImage get url;
  ItemImageName get imageName;

  $IndividualImagesCopyWith<IndividualImages> get copyWith;
}

/// @nodoc
abstract class $IndividualImagesCopyWith<$Res> {
  factory $IndividualImagesCopyWith(
          IndividualImages value, $Res Function(IndividualImages) then) =
      _$IndividualImagesCopyWithImpl<$Res>;
  $Res call({UniqueId id, ItemImage url, ItemImageName imageName});
}

/// @nodoc
class _$IndividualImagesCopyWithImpl<$Res>
    implements $IndividualImagesCopyWith<$Res> {
  _$IndividualImagesCopyWithImpl(this._value, this._then);

  final IndividualImages _value;
  // ignore: unused_field
  final $Res Function(IndividualImages) _then;

  @override
  $Res call({
    Object id = freezed,
    Object url = freezed,
    Object imageName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      url: url == freezed ? _value.url : url as ItemImage,
      imageName:
          imageName == freezed ? _value.imageName : imageName as ItemImageName,
    ));
  }
}

/// @nodoc
abstract class _$IndividualImagesCopyWith<$Res>
    implements $IndividualImagesCopyWith<$Res> {
  factory _$IndividualImagesCopyWith(
          _IndividualImages value, $Res Function(_IndividualImages) then) =
      __$IndividualImagesCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, ItemImage url, ItemImageName imageName});
}

/// @nodoc
class __$IndividualImagesCopyWithImpl<$Res>
    extends _$IndividualImagesCopyWithImpl<$Res>
    implements _$IndividualImagesCopyWith<$Res> {
  __$IndividualImagesCopyWithImpl(
      _IndividualImages _value, $Res Function(_IndividualImages) _then)
      : super(_value, (v) => _then(v as _IndividualImages));

  @override
  _IndividualImages get _value => super._value as _IndividualImages;

  @override
  $Res call({
    Object id = freezed,
    Object url = freezed,
    Object imageName = freezed,
  }) {
    return _then(_IndividualImages(
      id: id == freezed ? _value.id : id as UniqueId,
      url: url == freezed ? _value.url : url as ItemImage,
      imageName:
          imageName == freezed ? _value.imageName : imageName as ItemImageName,
    ));
  }
}

/// @nodoc
class _$_IndividualImages extends _IndividualImages {
  const _$_IndividualImages(
      {@required this.id, @required this.url, @required this.imageName})
      : assert(id != null),
        assert(url != null),
        assert(imageName != null),
        super._();

  @override
  final UniqueId id;
  @override
  final ItemImage url;
  @override
  final ItemImageName imageName;

  @override
  String toString() {
    return 'IndividualImages(id: $id, url: $url, imageName: $imageName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IndividualImages &&
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

  @override
  _$IndividualImagesCopyWith<_IndividualImages> get copyWith =>
      __$IndividualImagesCopyWithImpl<_IndividualImages>(this, _$identity);
}

abstract class _IndividualImages extends IndividualImages {
  const _IndividualImages._() : super._();
  const factory _IndividualImages(
      {@required UniqueId id,
      @required ItemImage url,
      @required ItemImageName imageName}) = _$_IndividualImages;

  @override
  UniqueId get id;
  @override
  ItemImage get url;
  @override
  ItemImageName get imageName;
  @override
  _$IndividualImagesCopyWith<_IndividualImages> get copyWith;
}
