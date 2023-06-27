import 'package:flutter/material.dart';

class MyButton {
  MyButton(String s);

  static Widget textButton(
    String title,
    void Function() onPressed, {
    TextStyle? style,
    Color? hoverColor,
  }) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return hoverColor ?? Colors.amber;
            }
            return Colors.white;
          }),
        ),
        child: Text(
          title,
          style: style ??
              const TextStyle(
                fontFamily: 'Poppins-Regular',
                fontSize: 16,
                color: Colors.white,
              ),
        ));
  }

  static Widget iconButton(Widget icon,
      {required void Function()? onPressed,
      TextStyle? style,
      Color? hoverColor,
      bool isDarkMode = false}) {
    return IconButton(
      icon: icon,
      onPressed: onPressed,
    );
  }

  static Widget normalButton(String title,
      {required void Function()? onPressed,
      TextStyle? style,
      Color? hoverColor,
      bool isDarkMode = false}) {
    return ElevatedButton(
      onPressed: onPressed,
      // onHover: (ho){},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              isDarkMode ? Colors.blue : Colors.white),
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                // debugPrint("Hello Hover");
                return hoverColor ?? Colors.grey; //<-- SEE HERE
              }
              return null; // Defer to the widget's default.
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 12),
        child: Text(
          title,
          style: style ??
              const TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins-Regular',
                color: Colors.black,
              ),
        ),
      ),
    );
  }
}
