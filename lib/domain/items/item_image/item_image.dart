import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_image.freezed.dart';

//TODO - LOOK HERE AND UPDATE FAILUREOPTION
@freezed
abstract class IndividualImages implements _$IndividualImages {

  const factory IndividualImages({
    @required UniqueId id,
    @required ItemImage url,
    @required ItemImageName imageName,
  }) = _IndividualImages;

  const IndividualImages._();

  factory IndividualImages.empty() => IndividualImages(
        id: UniqueId(),
        url: ItemImage(''),
        imageName: ItemImageName(''),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return url.value.fold((f) => some(f), (_) => none());
  }
}
