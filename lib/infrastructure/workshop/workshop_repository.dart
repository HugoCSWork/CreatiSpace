import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/workshop/i_workshop_facade.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/domain/workshop/workshop_error_failures/workshop_error_failures.dart';
import 'package:creatispace/infrastructure/core/firestore_helpers.dart';
import 'package:creatispace/infrastructure/workshop/workshop_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IWorkshopFacade)
class WorkshopRepository implements IWorkshopFacade {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseAuth _firebaseAuth;

  WorkshopRepository(this._firebaseFirestore, this._firebaseAuth);


  @override
  Future<Either<WorkshopErrorFailures, Unit>> create(Workshop item) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
      final workshopDto = WorkshopDto.fromDomain(item, userDoc.id, timestamp);
      await userDoc.workshopCollection.doc(item.id.getOrCrash()).set(workshopDto.toJson());
      await _firebaseFirestore.collection('workshops').doc(item.id.getOrCrash()).set(workshopDto.toJson());
      return right(unit);
    } catch (error) {
      return left(const WorkshopErrorFailures.unexpected());
    }
  }

  @override
  Stream<Either<WorkshopErrorFailures, KtList<Workshop>>> watchAllUserWorkshops() async* {
    final userDoc = await _firebaseFirestore.userDocument();
    yield* userDoc.workshopCollection
        .snapshots()
        .map(
          (snapshot) => right<WorkshopErrorFailures, KtList<Workshop>>(
        snapshot.docs
            .map((doc) => WorkshopDto.fromFirestore(doc).toDomain())
            .toImmutableList(),
      ),
    ).onErrorReturnWith((error) {
      if (error is FirebaseException &&
          error.message.contains('PERMISSION_DENIED')) {
        return left(const WorkshopErrorFailures.insufficientPermissions());
      } else {
        return left(const WorkshopErrorFailures.unexpected());
      }
    });
  }
}
