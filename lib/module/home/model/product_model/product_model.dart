// class AllProductModel {
//   int? id;
//   String? imgUrl;
//   String? lable;
//   double? price;
//   String? recommend;
//   String? category;
//   bool? isFav;

//   AllProductModel({
//     this.id,
//     this.lable,
//     this.price,
//     this.recommend,
//     this.imgUrl,
//     this.category,
//     this.isFav = false,
//   });
//   AllProductModel.copyWith(
//       {int? id,
//       String? imgUrl,
//       String? lable,
//       double? price,
//       String? recommend,
//       String? category,
//       bool? isFav}) {
//     this.id = id ?? this.id;
//     this.lable = lable ?? this.lable;
//     this.price = price ?? this.price;
//     this.recommend = recommend ?? this.recommend;
//     this.imgUrl = imgUrl ?? this.imgUrl;
//     this.category = category ?? this.category;
//     this.isFav = isFav ?? this.isFav;
//   }
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class AllProductModel with _$AllProductModel {
  factory AllProductModel({
    final int? id,
    final String? imgUrl,
    final String? lable,
    final double? price,
    final String? recommend,
    final String? category,
    @Default(false) final bool isFav,
  }) = _AllProductModel;

  factory AllProductModel.fromJson(Map<String, dynamic> json) =>
      _$AllProductModelFromJson(json);
}
