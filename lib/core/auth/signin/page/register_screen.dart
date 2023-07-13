import 'package:diya_ecomerce/config/go_route/app_routes.dart';
import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:diya_ecomerce/gen/assets.gen.dart';
import 'package:diya_ecomerce/gen/fonts.gen.dart';
import 'package:diya_ecomerce/utils/widget/custom_button_circle.dart';
import 'package:diya_ecomerce/utils/widget/custom_click_button.dart';
import 'package:diya_ecomerce/utils/widget/custom_textformfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../generated/l10n.dart';
import '../../../../utils/controller/gloabal_controller.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                            S.current.register_account,
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
                                top: 10, left: 60, right: 60),
                            child: Text(
                              textAlign: TextAlign.center,
                              S.current.fill_your_detail,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium
                                  ?.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: App.isEnglish
                                        ? FontFamily.poppinsRegular
                                        : FontFamily.kantumruyPro,
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
                      S.current.your_name,
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
                      hintext: S.current.your_name,
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
                      hintext: S.current.email,
                    ),
                    const SizedBox(height: 30),
                    Text(
                      S.current.password,
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
                      obscureText: true,
                      hintext: S.current.password,
                      isPassword: true,
                    ),
                    const SizedBox(height: 12),
                    const SizedBox(height: 24),
                    CustomClickButton(
                      onTap: () {
                        context.go(Routes.HOME_SCREEN);
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
                  text: "${S.current.already_have_account}? ",
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
                          debugPrint('---Pushing to Login Screen');
                          context.push(Routes.LOGIN_SCREEN);
                        },
                      text: S.current.log_in,
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
