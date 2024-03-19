import 'package:amazing_calculator/resources/images.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(larsZ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
