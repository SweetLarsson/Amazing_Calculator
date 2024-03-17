import 'package:amazing_calculator/widgets/background.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'application_index.dart';

class ApplicationPage extends GetView<ApplicationController> {
  const ApplicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Background(),
          Center(
            child: Text(
              'This is application page',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
