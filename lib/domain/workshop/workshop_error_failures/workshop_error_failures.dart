
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workshop_error_failures.freezed.dart';

@freezed
abstract class WorkshopErrorFailures with _$WorkshopErrorFailures {
  const factory WorkshopErrorFailures.unexpected() = Unexpected;
  const factory WorkshopErrorFailures.insufficientPermissions() = InsufficientPermissions;
  const factory WorkshopErrorFailures.notFound() = NotFound;
}
