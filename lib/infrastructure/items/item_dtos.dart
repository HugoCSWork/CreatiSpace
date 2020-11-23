import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/items/item_image/item_image.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'item_dtos.freezed.dart';
part 'item_dtos.g.dart';

@freezed
abstract class ItemDto implements _$ItemDto {
  const ItemDto._();

  const factory ItemDto({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required String description,
    @required double price,
    @required double delivery,
    @required int quantity,
    @required bool purchasable,
    @required List<IndividualImagesDto> images,
  }) = _ItemDto;

  factory ItemDto.fromDomain(Item item) {
    return ItemDto(
        id: item.id.getOrCrash(),
        name: item.name.getOrCrash(),
        description: item.description.getOrCrash(),
        price: item.price.getOrCrash(),
        delivery: item.delivery.getOrCrash(),
        quantity: item.quantity.getOrCrash(),
        purchasable: item.purchasable.getOrCrash(),
        images: item.images
            .getOrCrash()
            .map((images) => IndividualImagesDto.fromDomain(images))
            .asList());
  }

  Item toDomain() {
    return Item(
      id: UniqueId.fromUniqueString(id),
      name: ItemName(name),
      description: ItemDescription(description),
      price: ItemPrice(price),
      quantity: ItemQuantity(quantity),
      delivery: ItemDeliveryFee(delivery),
      purchasable: ItemPurchasable(purchasable),
      images:
          ItemImageList(images.map((dto) => dto.toDomain()).toImmutableList()),
    );
  }

  factory ItemDto.fromJson(Map<String, dynamic> json) =>
      _$ItemDtoFromJson(json);

  factory ItemDto.fromFirestore(DocumentSnapshot doc) {
    return ItemDto.fromJson(doc.data()).copyWith(id: doc.id);
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
