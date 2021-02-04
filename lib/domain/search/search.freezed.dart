// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchTearOff {
  const _$SearchTearOff();

// ignore: unused_element
  _Search call({@required String search, @required bool searchOption}) {
    return _Search(
      search: search,
      searchOption: searchOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Search = _$SearchTearOff();

/// @nodoc
mixin _$Search {
  String get search;
  bool get searchOption;

  $SearchCopyWith<Search> get copyWith;
}

/// @nodoc
abstract class $SearchCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) then) =
      _$SearchCopyWithImpl<$Res>;
  $Res call({String search, bool searchOption});
}

/// @nodoc
class _$SearchCopyWithImpl<$Res> implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(this._value, this._then);

  final Search _value;
  // ignore: unused_field
  final $Res Function(Search) _then;

  @override
  $Res call({
    Object search = freezed,
    Object searchOption = freezed,
  }) {
    return _then(_value.copyWith(
      search: search == freezed ? _value.search : search as String,
      searchOption:
          searchOption == freezed ? _value.searchOption : searchOption as bool,
    ));
  }
}

/// @nodoc
abstract class _$SearchCopyWith<$Res> implements $SearchCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) then) =
      __$SearchCopyWithImpl<$Res>;
  @override
  $Res call({String search, bool searchOption});
}

/// @nodoc
class __$SearchCopyWithImpl<$Res> extends _$SearchCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(_Search _value, $Res Function(_Search) _then)
      : super(_value, (v) => _then(v as _Search));

  @override
  _Search get _value => super._value as _Search;

  @override
  $Res call({
    Object search = freezed,
    Object searchOption = freezed,
  }) {
    return _then(_Search(
      search: search == freezed ? _value.search : search as String,
      searchOption:
          searchOption == freezed ? _value.searchOption : searchOption as bool,
    ));
  }
}

/// @nodoc
class _$_Search extends _Search {
  const _$_Search({@required this.search, @required this.searchOption})
      : assert(search != null),
        assert(searchOption != null),
        super._();

  @override
  final String search;
  @override
  final bool searchOption;

  @override
  String toString() {
    return 'Search(search: $search, searchOption: $searchOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Search &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)) &&
            (identical(other.searchOption, searchOption) ||
                const DeepCollectionEquality()
                    .equals(other.searchOption, searchOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(search) ^
      const DeepCollectionEquality().hash(searchOption);

  @override
  _$SearchCopyWith<_Search> get copyWith =>
      __$SearchCopyWithImpl<_Search>(this, _$identity);
}

abstract class _Search extends Search {
  const _Search._() : super._();
  const factory _Search(
      {@required String search, @required bool searchOption}) = _$_Search;

  @override
  String get search;
  @override
  bool get searchOption;
  @override
  _$SearchCopyWith<_Search> get copyWith;
}
