import 'package:flutter/material.dart';

import '../resources/dimensions.dart';

class SignBox extends StatelessWidget {
  final String imgPath;

  const SignBox({
    super.key,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MyDimensions.d50,
      height: MyDimensions.d50,
      decoration: BoxDecoration(
        color: Colors.white12,
        border: Border.all(
          color: Colors.white24,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            MyDimensions.d15,
          ),
        ),
      ),
      alignment: Alignment.center,
      child: Image.asset(
        imgPath,
      ),
    );
  }
}
