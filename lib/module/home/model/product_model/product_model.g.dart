// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllProductModel _$$_AllProductModelFromJson(Map<String, dynamic> json) =>
    _$_AllProductModel(
      id: json['id'] as int?,
      imgUrl: json['imgUrl'] as String?,
      lable: json['lable'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      recommend: json['recommend'] as String?,
      category: json['category'] as String?,
      isFav: json['isFav'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AllProductModelToJson(_$_AllProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imgUrl': instance.imgUrl,
      'lable': instance.lable,
      'price': instance.price,
      'recommend': instance.recommend,
      'category': instance.category,
      'isFav': instance.isFav,
    };
