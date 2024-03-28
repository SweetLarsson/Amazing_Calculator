
import 'package:amazing_calculator/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_index.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Background(),
          /*
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 11,
              sigmaY: 5,
            ),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ],
              ),
            ),
          ),
          */
        ],
      ),
    );
  }
}
