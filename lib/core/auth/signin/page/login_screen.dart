import 'package:diya_ecomerce/config/go_route/app_routes.dart';
import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:diya_ecomerce/core/auth/signin/controller/auth_controller.dart';
import 'package:diya_ecomerce/gen/assets.gen.dart';
import 'package:diya_ecomerce/gen/fonts.gen.dart';
import 'package:diya_ecomerce/utils/widget/custom_button_circle.dart';
import 'package:diya_ecomerce/utils/widget/custom_click_button.dart';
import 'package:diya_ecomerce/utils/widget/custom_textformfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final authControler = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: CircularButton(
              height: 44,
              width: 44,
              icon: 'assets/svg/arrow_back.svg',
            ),
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
                            'Hello Again!',
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
                      'Email Address',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontSize: 16,
                            fontFamily: FontFamily.ralewayRegular,
                            fontWeight: FontWeight.w500,
                            color: AppColor.textBlackLight,
                          ),
                    ),
                    const SizedBox(height: 12),
                    CustomTextFormField(
                      controller: authControler.emailtxt.value,
                      hintext: 'Email',
                      isPassword: false,
                      onChangeds: (value) {
                        value = authControler.emailtxt.value.text;

                        debugPrint(
                            '---------------Data: ${authControler.emailtxt.value.text}');
                      },
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
                    CustomTextFormField(
                      obscureText: true,
                      hintext: 'Password',
                      controller: authControler.passwordtxt.value,
                      isPassword: true,
                      onChangeds: (value) {
                        value = authControler.passwordtxt.value.text;
                      },
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
                    CustomClickButton(
                      onTap: () {
                        if (authControler.emailtxt.value.text ==
                                authControler.email.value &&
                            authControler.passwordtxt.value.text ==
                                authControler.password.value) {
                          context.go(Routes.HOME_SCREEN);
                        } else {}
                      },
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
                          context.push(
                              Routes.LOGIN_SCREEN + Routes.REGISTER_SCREEN);
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
