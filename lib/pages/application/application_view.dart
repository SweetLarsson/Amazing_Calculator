import 'package:amazing_calculator/resources/colors.dart';
import 'package:amazing_calculator/widgets/my_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resources/dimensions.dart';
import '../../resources/icons.dart';
import '../../widgets/drawer.dart';
import 'application_controller.dart';
import 'application_index.dart';

class ApplicationPage extends GetView<ApplicationController> {
  const ApplicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.black,

      ///Drawer
      drawer: const MyDrawer(),

      ///AppBar
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: MyDimensions.d12),
            child: IconButton(
              onPressed: () {
                controller.dayNightTheme.value !=
                    controller.dayNightTheme.value;
              },
              icon: Icon(
                daylight,
                color: Colors.white,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.black87,
        title: const Text(
          'Standard',
          style: TextStyle(color: Colors.white),
        ),
      ),

      ///Body of application
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ///Display Screen
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: MyDimensions.d5_5,
              ),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  minHeight: MyDimensions.d440,
                ),
                child: Container(
                  padding: const EdgeInsets.all(MyDimensions.d15),
                  alignment: Alignment.bottomRight,
                  decoration: const BoxDecoration(
                    color: Colors.white10,
                  ),

                  ///displayed value on screen
                  child: Text(
                    controller.output,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: MyDimensions.d100,
                    ),
                  ),

                  ///
                ),
              ),
            ),

            ///Keypad and operands
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MyDimensions.d5),
              child: Column(
                children: [
                  //Row one
                  Row(
                    children: [
                      MyButton(
                        label: 'C',
                        labelColor: Colors.amber,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                      MyButton(
                        label: 'Clear',
                        labelColor: Colors.amber,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                      MyButton(
                        label: '%',
                        labelColor: Colors.amber,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                      MyButton(
                        label: 'x',
                        labelColor: Colors.amber,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                    ],
                  ),
                  //Row three
                  Row(
                    children: [
                      MyButton(
                        label: '7',
                        labelColor: Colors.white,
                        onTap: () => controller.keypadOnPressed,
                        bgColor: Colors.white10,
                      ),
                      MyButton(
                        label: '8',
                        labelColor: Colors.white,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                      MyButton(
                        label: '9',
                        labelColor: Colors.white,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                      MyButton(
                        label: '/',
                        labelColor: Colors.amber,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                    ],
                  ),
                  //Row four
                  Row(
                    children: [
                      MyButton(
                        label: '4',
                        labelColor: Colors.white,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                      MyButton(
                        label: '5',
                        labelColor: Colors.white,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                      MyButton(
                        label: '6',
                        labelColor: Colors.white,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                      MyButton(
                        label: '-',
                        labelColor: Colors.amber,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                    ],
                  ),

                  //Row five
                  Row(
                    children: [
                      MyButton(
                        label: '1',
                        labelColor: Colors.white,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                      MyButton(
                        label: '2',
                        labelColor: Colors.white,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                      MyButton(
                        label: '3',
                        labelColor: Colors.white,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                      MyButton(
                        label: '+',
                        labelColor: Colors.amber,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                    ],
                  ),

                  //Row six
                  Row(
                    children: [
                      MyButton(
                        label: '00',
                        labelColor: Colors.white,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                      MyButton(
                        label: '0',
                        labelColor: Colors.white,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                      MyButton(
                        label: '.',
                        labelColor: Colors.white,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                      MyButton(
                        label: '=',
                        labelColor: Colors.black,
                        onTap: null,
                        bgColor: Colors.amber,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
