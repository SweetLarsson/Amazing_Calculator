import 'package:amazing_calculator/resources/colors.dart';
import 'package:amazing_calculator/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'onboarding_index.dart';

class OnBoardingPage extends GetView<OnBoardingController> {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: MyButton(
        bgColor: MyColors.cadetBlue,
        label: 'label',
        onTap: null,
      ),
    );
  }
}
