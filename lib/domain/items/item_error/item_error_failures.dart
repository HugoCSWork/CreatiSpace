
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_error_failures.freezed.dart';

@freezed
abstract class ItemErrorFailure with _$ItemErrorFailure {
  const factory ItemErrorFailure.unexpected() = Unexpected;
  const factory ItemErrorFailure.insufficientPermissions() = InsufficientPermissions;
  const factory ItemErrorFailure.notFound() = NotFound;
}
