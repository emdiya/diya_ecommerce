// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllProductModel _$AllProductModelFromJson(Map<String, dynamic> json) {
  return _AllProductModel.fromJson(json);
}

/// @nodoc
mixin _$AllProductModel {
  int? get id => throw _privateConstructorUsedError;
  String? get imgUrl => throw _privateConstructorUsedError;
  String? get lable => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get recommend => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  bool get isFav => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllProductModelCopyWith<AllProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProductModelCopyWith<$Res> {
  factory $AllProductModelCopyWith(
          AllProductModel value, $Res Function(AllProductModel) then) =
      _$AllProductModelCopyWithImpl<$Res, AllProductModel>;
  @useResult
  $Res call(
      {int? id,
      String? imgUrl,
      String? lable,
      double? price,
      String? recommend,
      String? category,
      bool isFav});
}

/// @nodoc
class _$AllProductModelCopyWithImpl<$Res, $Val extends AllProductModel>
    implements $AllProductModelCopyWith<$Res> {
  _$AllProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? lable = freezed,
    Object? price = freezed,
    Object? recommend = freezed,
    Object? category = freezed,
    Object? isFav = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lable: freezed == lable
          ? _value.lable
          : lable // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      recommend: freezed == recommend
          ? _value.recommend
          : recommend // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      isFav: null == isFav
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllProductModelCopyWith<$Res>
    implements $AllProductModelCopyWith<$Res> {
  factory _$$_AllProductModelCopyWith(
          _$_AllProductModel value, $Res Function(_$_AllProductModel) then) =
      __$$_AllProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? imgUrl,
      String? lable,
      double? price,
      String? recommend,
      String? category,
      bool isFav});
}

/// @nodoc
class __$$_AllProductModelCopyWithImpl<$Res>
    extends _$AllProductModelCopyWithImpl<$Res, _$_AllProductModel>
    implements _$$_AllProductModelCopyWith<$Res> {
  __$$_AllProductModelCopyWithImpl(
      _$_AllProductModel _value, $Res Function(_$_AllProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imgUrl = freezed,
    Object? lable = freezed,
    Object? price = freezed,
    Object? recommend = freezed,
    Object? category = freezed,
    Object? isFav = null,
  }) {
    return _then(_$_AllProductModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imgUrl: freezed == imgUrl
          ? _value.imgUrl
          : imgUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lable: freezed == lable
          ? _value.lable
          : lable // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      recommend: freezed == recommend
          ? _value.recommend
          : recommend // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      isFav: null == isFav
          ? _value.isFav
          : isFav // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllProductModel implements _AllProductModel {
  _$_AllProductModel(
      {this.id,
      this.imgUrl,
      this.lable,
      this.price,
      this.recommend,
      this.category,
      this.isFav = false});

  factory _$_AllProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_AllProductModelFromJson(json);

  @override
  final int? id;
  @override
  final String? imgUrl;
  @override
  final String? lable;
  @override
  final double? price;
  @override
  final String? recommend;
  @override
  final String? category;
  @override
  @JsonKey()
  final bool isFav;

  @override
  String toString() {
    return 'AllProductModel(id: $id, imgUrl: $imgUrl, lable: $lable, price: $price, recommend: $recommend, category: $category, isFav: $isFav)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllProductModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imgUrl, imgUrl) || other.imgUrl == imgUrl) &&
            (identical(other.lable, lable) || other.lable == lable) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.recommend, recommend) ||
                other.recommend == recommend) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.isFav, isFav) || other.isFav == isFav));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, imgUrl, lable, price, recommend, category, isFav);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllProductModelCopyWith<_$_AllProductModel> get copyWith =>
      __$$_AllProductModelCopyWithImpl<_$_AllProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllProductModelToJson(
      this,
    );
  }
}

abstract class _AllProductModel implements AllProductModel {
  factory _AllProductModel(
      {final int? id,
      final String? imgUrl,
      final String? lable,
      final double? price,
      final String? recommend,
      final String? category,
      final bool isFav}) = _$_AllProductModel;

  factory _AllProductModel.fromJson(Map<String, dynamic> json) =
      _$_AllProductModel.fromJson;

  @override
  int? get id;
  @override
  String? get imgUrl;
  @override
  String? get lable;
  @override
  double? get price;
  @override
  String? get recommend;
  @override
  String? get category;
  @override
  bool get isFav;
  @override
  @JsonKey(ignore: true)
  _$$_AllProductModelCopyWith<_$_AllProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
