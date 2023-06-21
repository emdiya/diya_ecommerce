import 'package:diya_ecomerce/module/home/model/product_model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final searchtxt = TextEditingController().obs;
  final index = 0.obs;
  final isSelect = false.obs;
}

const cateList = [
  'All Shoes',
  'MEN',
  'WOMEN',
  'KID',
  'Other',
];
final allProductList = [
  AllProductModel(
    id: 101,
    imgUrl: 'assets/img/slider2.png',
    lable: 'Nike Jordan',
    price: 302,
    recommend: 'Best Seller',
    category: 'men',
  ),
  AllProductModel(
    id: 99,
    imgUrl: 'assets/img/slider2.png',
    lable: 'Nike Jordan1',
    price: 123,
    recommend: 'Best Seller',
    category: 'men',
  ),
  AllProductModel(
    id: 196,
    imgUrl: 'assets/img/slider2.png',
    lable: 'Nike 12 ProMax',
    price: 105,
    recommend: 'Best Seller',
    category: 'women',
  ),
  AllProductModel(
    id: 178,
    imgUrl: 'assets/img/slider2.png',
    lable: 'Nike Air2',
    price: 450,
    recommend: 'Best Seller',
    category: 'kid',
  ),
  AllProductModel(
    id: 190,
    imgUrl: 'assets/img/slider2.png',
    lable: 'Nike Air Pod Pro',
    price: 240,
    recommend: 'Best Seller',
    category: 'men',
  ),
  AllProductModel(
    id: 110,
    imgUrl: 'assets/img/slider2.png',
    lable: 'Nike Air 3',
    price: 199,
    recommend: 'Best Seller',
    category: 'men',
  ),
];
