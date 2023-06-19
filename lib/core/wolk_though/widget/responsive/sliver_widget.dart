import 'package:flutter/material.dart';

import '../../model/on_boarding_model/on_boarding_model.dart';
import 'build_slider_mobile.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
    required this.onPressed,
    required this.onSkipPressed,
    this.model,
    this.index,
  });
  final void Function() onPressed;
  final void Function() onSkipPressed;
  final OnBoardingModel? model;
  final int? index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BuildSliderMobile(
        onPressed: onPressed,
        onSkipPressed: onSkipPressed,
        model: model,
        index: index,
      ),
    );
  }
}
