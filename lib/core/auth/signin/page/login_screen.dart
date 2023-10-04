import 'package:diya_ecomerce/config/go_route/app_routes.dart';
import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:diya_ecomerce/core/auth/signin/controller/auth_controller.dart';
import 'package:diya_ecomerce/gen/assets.gen.dart';
import 'package:diya_ecomerce/gen/fonts.gen.dart';
import 'package:diya_ecomerce/utils/controller/gloabal_controller.dart';
import 'package:diya_ecomerce/utils/widget/custom_button_circle.dart';
import 'package:diya_ecomerce/utils/widget/custom_click_button.dart';
import 'package:diya_ecomerce/utils/widget/custom_textformfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../generated/l10n.dart';

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
                            S.current.hello_again,
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge
                                ?.copyWith(
                                  fontFamily: App.isEnglish
                                      ? FontFamily.ralewayBold
                                      : FontFamily.kantumruyPro,
                                  color: AppColor.textBlackLight,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 60, right: 60, top: 10),
                            child: Text(
                              textAlign: TextAlign.center,
                              S.current.fill_your_detail,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.textGrey1,
                                    fontFamily: App.isEnglish
                                        ? FontFamily.poppinsRegular
                                        : FontFamily.kantumruyPro,
                                  ),
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      S.current.email_address,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            fontSize: 16,
                            fontFamily: App.isEnglish
                                ? FontFamily.ralewayRegular
                                : FontFamily.kantumruyPro,
                            fontWeight: FontWeight.w500,
                            color: AppColor.textBlackLight,
                          ),
                    ),
                    const SizedBox(height: 12),
                    CustomTextFormField(
                      controller: authControler.emailtxt.value,
                      hintext: S.current.email,
                      isPassword: false,
                      onChangeds: (value) {
                        value = authControler.emailtxt.value.text;

                        debugPrint(
                            '---------------Data: ${authControler.emailtxt.value.text}');
                      },
                    ),
                    const SizedBox(height: 30),
                    Text(
                      S.current.password,
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
                      hintext: S.current.password,
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
                          S.current.recovery_password,
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
                      onTap: () async {
                        if (authControler.emailtxt.value.text ==
                                authControler.email.value &&
                            authControler.passwordtxt.value.text ==
                                authControler.password.value) {
                          authControler.isLoading.value
                              ? const CircularProgressIndicator()
                              :
                              // Future.delayed(
                              //   const Duration(microseconds: 12000),
                              //   () {
                              //     // const LoadingScreen(
                              //     //   isTransparent: true,
                              //     // );

                              //   },
                              // );

                              context.go(Routes.HOME_SCREEN);
                        } else {}
                      },
                      title: S.current.sign_in,
                    ),
                    const SizedBox(height: 24),
                    CustomClickButton(
                      imgUrl: Assets.svg.googleIcon.path,
                      color: AppColor.textGrey6,
                      colortxt: AppColor.textBlackLight,
                      title: S.current.sign_in_google,
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
                  text: '${S.current.new_user}? ',
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontSize: 16,
                        fontFamily: App.isEnglish
                            ? FontFamily.ralewayRegular
                            : FontFamily.kantumruyPro,
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
                      text: S.current.create_account,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            fontFamily: App.isEnglish
                                ? FontFamily.ralewayRegular
                                : FontFamily.kantumruyPro,
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
