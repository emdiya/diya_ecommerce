import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final emailtxt = TextEditingController().obs;
  final passwordtxt = TextEditingController().obs;
  final email = 'admin'.obs;
  final password = 'admin123'.obs;
  final isLoading = false.obs;
}
