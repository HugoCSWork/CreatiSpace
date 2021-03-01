import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/domain/workshop/workshop_error_failures/workshop_error_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IWorkshopFacade {
  Future<Either<WorkshopErrorFailures, Unit>> create(Workshop item);
  Stream<Either<WorkshopErrorFailures, KtList<Workshop>>> watchAllUserWorkshops();
}