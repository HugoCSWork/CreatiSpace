import 'package:creatispace/domain/items/home_item/home_item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class ISearchFacade {
  Stream<Either<ItemErrorFailure, KtList<UserProfileData>>> searchForUsers(String search);
  Stream<Either<ItemErrorFailure, KtList<HomeItem>>> searchForItems(String search);
}