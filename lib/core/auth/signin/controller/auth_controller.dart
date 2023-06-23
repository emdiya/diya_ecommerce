import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final emailtxt = TextEditingController().obs;
  final passwordtxt = TextEditingController().obs;
  final email = 'diya.dev@admin.com'.obs;
  final password = 'admin123'.obs;
}
