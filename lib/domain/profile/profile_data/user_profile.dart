import 'package:auto_route/auto_route.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'user_profile.freezed.dart';

@freezed
abstract class UserProfileData implements _$UserProfileData {
  const factory UserProfileData({
    @required String username,
    @required int following,
    @required int followers,
    @required String profileImageURL,
    @required String backgroundImageURL,
  }) = _UserProfileData;

}