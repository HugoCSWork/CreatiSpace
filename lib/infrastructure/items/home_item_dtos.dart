import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/items/home_item/home_item.dart';
import 'package:creatispace/domain/items/item_image/item_image.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'home_item_dtos.freezed.dart';
part 'home_item_dtos.g.dart';

@freezed
abstract class HomeItemDto implements _$HomeItemDto {
  const HomeItemDto._();

  const factory HomeItemDto({
    @required String id,
    @required String item_id,
    @required String timestamp,
    @required String name,
    @required String username,
    @required String profileImageURL,
    @required String description,
    @required double price,
    @required double delivery,
    @required int quantity,
    @required bool purchasable,
    @required List<IndividualImagesDto> images,
  }) = _HomeItemDto;

  factory HomeItemDto.fromDomain(HomeItem item) {
    return HomeItemDto(
        id: item.id,
        timestamp: item.timestamp,
        item_id: item.item_id,
        name: item.name.getOrCrash(),
        description: item.description.getOrCrash(),
        price: item.price.getOrCrash(),
        delivery: item.delivery.getOrCrash(),
        quantity: item.quantity.getOrCrash(),
        purchasable: item.purchasable.getOrCrash(),
        username: item.username,
        profileImageURL: item.profileImageURL,
        images: item.images
            .getOrCrash()
            .map((images) => IndividualImagesDto.fromDomain(images))
            .asList());
  }

  HomeItem toDomain() {
    return HomeItem(
      id: id,
      item_id: item_id,
      timestamp: timestamp,
      name: ItemName(name),
      description: ItemDescription(description),
      price: ItemPrice(price),
      quantity: ItemQuantity(quantity),
      delivery: ItemDeliveryFee(delivery),
      purchasable: ItemPurchasable(purchasable),
      profileImageURL: profileImageURL,
      username: username,
      images: ItemImageList(images.map((dto) => dto.toDomain()).toImmutableList()),

    );
  }

  factory HomeItemDto.fromJson(Map<String, dynamic> json) =>
      _$HomeItemDtoFromJson(json);

  factory HomeItemDto.fromFirestore(DocumentSnapshot doc) {
    return HomeItemDto.fromJson(doc.data());
  }
}

@freezed
abstract class IndividualImagesDto implements _$IndividualImagesDto {
  const IndividualImagesDto._();

  const factory IndividualImagesDto({
    @required String id,
    @required String url,
    @required String imageName,
  }) = _IndividualImagesDto;

  factory IndividualImagesDto.fromDomain(IndividualImages image) {
    return IndividualImagesDto(
      id: image.id.getOrCrash(),
      url: image.url.getOrCrash(),
      imageName: image.imageName.getOrCrash(),
    );
  }

  IndividualImages toDomain() {
    return IndividualImages(
      id: UniqueId.fromUniqueString(id),
      url: ItemImage(url),
      imageName: ItemImageName(imageName),
    );
  }

  factory IndividualImagesDto.fromJson(Map<String, dynamic> json) =>
      _$IndividualImagesDtoFromJson(json);
}
