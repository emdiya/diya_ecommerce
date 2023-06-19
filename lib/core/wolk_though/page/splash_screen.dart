import 'package:diya_ecomerce/core/wolk_though/page/on_boarding_screen.dart';
import 'package:diya_ecomerce/gen/assets.gen.dart';
import 'package:diya_ecomerce/utils/widget/custom_transition_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        StyleTransitonPage(
          const OnboardingScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0D6EFD),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SvgPicture.asset(Assets.svg.nikeLogo.path)
                .animate()
                .fadeIn(
                  // begin: 1,
                  curve: Curves.easeInOutCirc,
                  delay: const Duration(
                    milliseconds: 100,
                  ),
                )
                .moveY(
                  begin: 10,
                  end: -50,
                  delay: const Duration(
                    milliseconds: 1200,
                  ),
                ),
          ),
          const Text(
            'Welcome to Diya E-Comerce..!',
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
          ).animate().fadeIn(
                begin: -10,
                curve: Curves.easeInOutBack,
                delay: const Duration(
                  milliseconds: 1200,
                ),
              ),
        ],
      ),
    );
  }
}
