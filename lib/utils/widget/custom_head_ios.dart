import 'package:flutter/material.dart';

class CustomHeaderIOS extends StatelessWidget {
  const CustomHeaderIOS({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 5,
        width: 40,
        margin: const EdgeInsets.only(top: 5, bottom: 5),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
