import 'package:flutter/material.dart';

import '../resources/dimensions.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      actions:  const [
        Padding(
          padding: EdgeInsets.only(right: MyDimensions.d24),
          child: IconButton(
            onPressed: null,
            icon: Icon(
              Icons.history_rounded,
              color: Colors.white,
            ),
          ),
        ),
      ],
      backgroundColor: Colors.black87,
      title:  Text(
        'Standard',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
