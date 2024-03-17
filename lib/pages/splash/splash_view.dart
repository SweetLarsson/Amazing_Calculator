import 'dart:ui';

import 'package:amazing_calculator/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_index.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 11,
              sigmaY: 5,
            ),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    size: 145,
                    Icons.calculate,
                    shadows: [
                      Shadow(
                        color: Colors.white70,
                        blurRadius: 2,
                        offset: Offset(2, 5),
                      ),
                    ],
                  ),
                  Text(
                    'Kalkulet',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      shadows: [
                        Shadow(
                          color: Colors.black87,
                          blurRadius: 2,
                          offset: Offset(2, 5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
