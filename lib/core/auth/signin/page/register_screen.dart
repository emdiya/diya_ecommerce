import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:diya_ecomerce/gen/assets.gen.dart';
import 'package:diya_ecomerce/gen/fonts.gen.dart';
import 'package:diya_ecomerce/utils/widget/custom_button_circle.dart';
import 'package:diya_ecomerce/utils/widget/custom_click_button.dart';
import 'package:diya_ecomerce/utils/widget/custom_textformfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: CircularButton(
            height: 44,
            width: 44,
            icon: 'assets/svg/arrow_back.svg',
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          Text(
                            'Resginter Account!',
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                  fontFamily: FontFamily.ralewayBold,
                                  color: AppColor.textBlackLight,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60, right: 60),
                            child: Text(
                              textAlign: TextAlign.center,
                              'Fill your details or continue with social media',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.textGrey1,
                                  ),
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Your Name',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontSize: 16,
                            fontFamily: FontFamily.ralewayRegular,
                            fontWeight: FontWeight.w500,
                            color: AppColor.textBlackLight,
                          ),
                    ),
                    const SizedBox(height: 12),
                    const CustomTextFormField(
                      hintext: 'Your Name',
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Email Address',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontSize: 16,
                            fontFamily: FontFamily.ralewayRegular,
                            fontWeight: FontWeight.w500,
                            color: AppColor.textBlackLight,
                          ),
                    ),
                    const SizedBox(height: 12),
                    const CustomTextFormField(
                      hintext: 'Email',
                    ),
                    const SizedBox(height: 30),
                    Text(
                      'Password',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontSize: 16,
                            fontFamily: FontFamily.ralewayRegular,
                            fontWeight: FontWeight.w500,
                            color: AppColor.textBlackLight,
                          ),
                    ),
                    const SizedBox(height: 12),
                    const CustomTextFormField(
                      obscureText: true,
                      hintext: 'Password',
                      isPassword: true,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Recovery Password',
                          overflow: TextOverflow.clip,
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    fontFamily: FontFamily.ralewayRegular,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.textGrey1,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    const CustomClickButton(
                      title: 'Sign In',
                    ),
                    const SizedBox(height: 24),
                    CustomClickButton(
                      imgUrl: Assets.svg.googleIcon.path,
                      color: AppColor.textGrey6,
                      colortxt: AppColor.textBlackLight,
                      title: 'Sign In With Google',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 47),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text.rich(
                TextSpan(
                  text: 'New User? ',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontSize: 16,
                        fontFamily: FontFamily.ralewayRegular,
                        fontWeight: FontWeight.w500,
                        color: AppColor.textGrey2,
                      ),
                  children: <InlineSpan>[
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          debugPrint('TextSpan tapped!');
                        },
                      text: 'Create Account',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            fontFamily: FontFamily.ralewayRegular,
                            fontSize: 16,
                            color: AppColor.textMediumBlack,
                          ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
