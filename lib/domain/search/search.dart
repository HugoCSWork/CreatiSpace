import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';

@freezed
abstract class Search implements _$Search {

  const factory Search({
    @required String search,
    @required bool searchOption,
  }) = _Search;

  const Search._();

  factory Search.empty() => Search(
      search: '',
      searchOption: false,
  );
}
