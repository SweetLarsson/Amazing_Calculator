import 'dart:ui';

import 'package:flutter/material.dart';

class NavBackground extends StatelessWidget {
  const NavBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: 5,
          sigmaX: 5,
        ),
        child: const SizedBox(),
      ),
    );
  }
}
