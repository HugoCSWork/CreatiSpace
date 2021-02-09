// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemDto _$_$_ItemDtoFromJson(Map<String, dynamic> json) {
  return _$_ItemDto(
    timestamp: json['timestamp'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    price: (json['price'] as num)?.toDouble(),
    delivery: (json['delivery'] as num)?.toDouble(),
    quantity: json['quantity'] as int,
    purchasable: json['purchasable'] as bool,
    images: (json['images'] as List)
        ?.map((e) => e == null
            ? null
            : IndividualImagesDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ItemDtoToJson(_$_ItemDto instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'delivery': instance.delivery,
      'quantity': instance.quantity,
      'purchasable': instance.purchasable,
      'images': instance.images?.map((e) => e?.toJson())?.toList(),
    };

_$_IndividualImagesDto _$_$_IndividualImagesDtoFromJson(
    Map<String, dynamic> json) {
  return _$_IndividualImagesDto(
    id: json['id'] as String,
    url: json['url'] as String,
    imageName: json['imageName'] as String,
  );
}

Map<String, dynamic> _$_$_IndividualImagesDtoToJson(
        _$_IndividualImagesDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'imageName': instance.imageName,
    };
