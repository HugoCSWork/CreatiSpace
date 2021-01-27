import 'package:auto_route/auto_route.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'peer_profile.freezed.dart';

@freezed
abstract class PeerProfileData implements _$PeerProfileData {
  const factory PeerProfileData({
    @required String id,
    @required String username,
    @required int following,
    @required int followers,
    @required String profileImageURL,
    @required Item item
  }) = _PeerProfileData;
}