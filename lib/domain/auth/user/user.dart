import 'package:creatispace/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class CurrentUser with _$CurrentUser {
  const factory CurrentUser({
    @required UniqueId id,
    @required bool emailVerified,
  }) = _CurrentUser;
}

