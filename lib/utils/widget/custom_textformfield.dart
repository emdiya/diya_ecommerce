// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:diya_ecomerce/utils/controller/gloabal_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:diya_ecomerce/constant/app_colors.dart';
import 'package:diya_ecomerce/gen/fonts.gen.dart';

class CustomTextFormField extends StatefulWidget {
  final bool? visible;
  final String? textValidate;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? labeltexts;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final VoidCallback? onpress;
  final String? initialValue;
  final int? maxLines;
  final Color? fillColor;
  final InputBorder? enabledBorder;
  final InputBorder? border;
  final Widget? suffix;
  final String? hintext;
  final bool? readonly;
  final bool? isValidated;
  final bool? isRequired;
  final bool? obscureText;
  final String? suffixIcon;
  final void Function()? onTap;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final bool? isPassword;

  final ValueChanged<String>? onChangeds;
  const CustomTextFormField({
    Key? key,
    this.visible,
    this.textValidate,
    this.keyboardType,
    this.inputFormatters,
    this.labeltexts,
    this.controller,
    this.validator,
    this.autovalidateMode,
    this.onpress,
    this.initialValue,
    this.maxLines = 1,
    this.fillColor,
    this.enabledBorder,
    this.border,
    this.suffix,
    this.hintext,
    this.readonly = false,
    this.isValidated = false,
    this.isRequired = false,
    this.obscureText = false,
    this.suffixIcon,
    this.onTap,
    this.focusNode,
    this.textInputAction,
    this.isPassword,
    this.onChangeds,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscure = true;
  final _localTextEditingController = TextEditingController();

  void _initialTextField() {
    // if ((widget.controller ?? _localTextEditingController).text.isNotEmpty) {
    (widget.controller ?? _localTextEditingController).text =
        widget.initialValue ?? '';
    // }
  }

  @override
  void initState() {
    _initialTextField();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // var isDarkMode = Theme.of(context).brightness.index == 0;
    return Column(
      children: [
        TextFormField(
          obscureText: widget.obscureText! ? obscure : false,
          textInputAction: widget.textInputAction ?? TextInputAction.next,
          focusNode: widget.focusNode,
          onTap: widget.onTap,
          readOnly: widget.readonly!,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
                fontFamily: FontFamily.poppinsRegular,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
          inputFormatters: widget.inputFormatters,
          keyboardType: widget.keyboardType,
          maxLines: widget.maxLines,
          onChanged: (v) {
            setState(() {});
            widget.onChangeds?.call(v);
          },
          controller: widget.controller ?? _localTextEditingController,
          validator: widget.validator,
          autovalidateMode: widget.autovalidateMode,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 20, top: 20),
            hintText: widget.hintext,
            suffix: widget.suffix,
            suffixIcon: widget.suffix == null
                ? (widget.suffixIcon != null || widget.isPassword == true
                    ? GestureDetector(
                        onTap: () {
                          setState(() {
                            debugPrint(
                                '------------------- obscure text is working');
                            obscure = !obscure;
                          });
                        },
                        child: Align(
                          widthFactor: 1,
                          heightFactor: 1,
                          child: obscure
                              ? Icon(
                                  Icons.remove_red_eye,
                                  size: 22,
                                  color: AppColor.textGrey1,
                                )
                              : SvgPicture.asset(
                                  'assets/svg/remove_eye.svg',
                                  colorFilter: const ColorFilter.mode(
                                      Colors.red, BlendMode.srcIn),
                                  height: 16,
                                  width: 16,
                                  fit: BoxFit.cover,
                                ),
                        ),
                      )
                    : null)
                : Align(
                    heightFactor: 1,
                    widthFactor: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: widget.suffix,
                    ),
                  ),
            alignLabelWithHint: true,
            filled: true,
            // labelText: widget.labeltexts,
            label: widget.labeltexts == null
                ? null
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        widget.labeltexts ?? '',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              fontSize: 14,
                              fontFamily: FontFamily.poppinsRegular,
                              color: AppColor.textGrey,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      widget.isRequired != null && widget.isRequired!
                          ? Text(
                              '*',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                    fontSize: 18,
                                    color: Colors.red,
                                  ),
                            )
                          : const Text(''),
                    ],
                  ),
            fillColor: (widget.controller ?? _localTextEditingController)
                    .text
                    .isNotEmpty
                ? widget.readonly == true
                    ? (context.isDarkMode
                        ? AppColor.textFieldFillColorDark
                        : AppColor.textGrey6)
                    : (context.isDarkMode
                        ? Theme.of(context).canvasColor
                        : AppColor.textGrey6)
                : context.isDarkMode
                    ? AppColor.textFieldFillColorDark
                    : AppColor.textGrey6,
            hintStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: AppColor.textBlackLight.withOpacity(0.2),
                  fontFamily: App.isEnglish
                      ? FontFamily.poppinsRegular
                      : FontFamily.kantumruyPro,
                  fontSize: 16,
                  fontWeight: App.isEnglish ? FontWeight.w600 : FontWeight.w400,
                ),
            labelStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: AppColor.textBlackLight,
                  fontWeight: FontWeight.w400,
                  fontFamily: App.isEnglish
                      ? FontFamily.poppinsRegular
                      : FontFamily.kantumruyPro,
                ),
            errorBorder: blackborderStyle,
            enabledBorder: widget.isValidated!
                ? errorBorder
                : widget.readonly! ||
                        (widget.controller ?? _localTextEditingController)
                            .text
                            .isNotEmpty
                    ? OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: widget.readonly == true ? 0.5 : 1,
                          color: AppColor.textGrey6,
                        ),
                      )
                    : OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
            border: widget.border,
            focusedBorder: widget.isValidated!
                ? errorBorder
                : (widget.controller ?? _localTextEditingController)
                        .text
                        .isEmpty
                    ? borderStyleTrue
                    : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: widget.readonly == true ? 0.5 : 1,
                          color: AppColor.textGrey6,
                        ),
                      ),
            focusedErrorBorder: blackborderStyle,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Visibility(
          visible: widget.isValidated ?? false,
          child: Row(
            children: [
              Icon(
                CupertinoIcons.exclamationmark_circle_fill,
                color: AppColor.primaryColor,
                size: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                widget.textValidate ?? '',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: AppColor.primaryColor,
                    fontFamily: FontFamily.poppinsRegular),
              )
            ],
          ),
        ),
      ],
    );
  }

//! Border Styles
  OutlineInputBorder bodereadonly = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      // color: AppColor.backColor.withOpacity(0.7),
      color: AppColor.textGrey6,
      width: 1,
    ),
  );

  OutlineInputBorder errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: AppColor.primaryColor),
  );
  OutlineInputBorder borderStyleTrue = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      width: 0.8,
      color: AppColor.primaryColor,
      // color: AppColor.debugPrint,
    ),
  );

  OutlineInputBorder blackborderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      // color: AppColor.textBlackLight.withOpacity(0.7),
      color: AppColor.textGrey6,
    ),
  );
}
