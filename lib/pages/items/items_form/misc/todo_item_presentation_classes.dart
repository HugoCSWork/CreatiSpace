import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/items/item_image/item_image.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'todo_item_presentation_classes.freezed.dart';

class ImageItems extends ValueNotifier<KtList<ImageItemPrimitive>> {
  ImageItems() : super(emptyList<ImageItemPrimitive>());
}

@freezed
abstract class ImageItemPrimitive implements _$ImageItemPrimitive {
  const ImageItemPrimitive._();

  const factory ImageItemPrimitive({
    @required UniqueId id,
    @required String url,
    @required String imageName,
  }) = _ImageItemPrimitive;

  factory ImageItemPrimitive.empty() => ImageItemPrimitive(
        id: UniqueId(),
        url: '',
        imageName: '',
      );

  factory ImageItemPrimitive.fromDomain(IndividualImages image) {
    return ImageItemPrimitive(
      id: image.id,
      url: image.url.getOrCrash(),
      imageName: image.imageName.getOrCrash()
    );
  }

  IndividualImages toDomain() {
    return IndividualImages(
      id: id,
      url: ItemImage(url),
      imageName: ItemImageName(imageName),
    );
  }
}
