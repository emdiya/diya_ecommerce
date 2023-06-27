import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../gen/fonts.gen.dart';
import '../../generated/l10n.dart';
import '../controller/gloabal_controller.dart';

class CustomEmptySate extends StatelessWidget {
  const CustomEmptySate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svg/empty_state.svg',
          fit: BoxFit.cover,
          height: 200,
          width: 120,
        ),
        const SizedBox(height: 5),
        Text(
          S.current.nodata,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontFamily: App.isEnglish
                    ? FontFamily.ralewayRegular
                    : FontFamily.kantumruyPro,
                fontSize: 16,
              ),
        ),
      ],
    );
  }
}
