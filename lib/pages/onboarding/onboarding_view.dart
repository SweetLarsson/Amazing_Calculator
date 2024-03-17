import 'dart:ui';

import 'package:amazing_calculator/resources/colors.dart';
import 'package:amazing_calculator/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resources/dimensions.dart';
import 'onboarding_index.dart';

class OnBoardingPage extends GetView<OnBoardingController> {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///Drawer
      drawer: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
        backgroundColor: Colors.black12,
        width: MyDimensions.d250,
        elevation: 0,
        child: Container(
          child: BackdropFilter(child: SizedBox(),
            filter:  ImageFilter.blur(sigmaY: 5, sigmaX: 5),),
          width: 25,
          height: 10,
        ),
      ),

      ///AppBar
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: MyDimensions.d24),
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
        title: Text(
          'Standard',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
      ),
      backgroundColor: MyColors.black,

      ///Body of application
      body: SingleChildScrollView(
        reverse: true,
        child: Center(
          child: Column(
            children: [
              ///Display Screen
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: MyDimensions.d5_5,
                ),
                child: Container(
                  padding: EdgeInsets.all(MyDimensions.d15),
                  height: MyDimensions.d250,
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                  ),
                  child: Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontSize: 45),
                  ),
                ),
              ),

              ///Keypad and functionalities
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: MyDimensions.d5),
                child: Column(
                  children: [
                    //Row one
                    Row(
                      children: [
                        Expanded(
                          child: MyButton(
                            label: '%',
                            labelColor: Colors.amber,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                        Expanded(
                          child: MyButton(
                            label: 'CE',
                            labelColor: Colors.amber,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                        Expanded(
                          child: MyButton(
                            label: 'C',
                            labelColor: Colors.amber,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                        Expanded(
                          child: MyButton(
                            label: 'Clear',
                            labelColor: Colors.amber,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                      ],
                    ),
                    //Row three
                    Row(
                      children: [
                        Expanded(
                          child: MyButton(
                            label: '7',
                            labelColor: Colors.white,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                        Expanded(
                          child: MyButton(
                            label: '8',
                            labelColor: Colors.white,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                        Expanded(
                          child: MyButton(
                            label: '9',
                            labelColor: Colors.white,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                        Expanded(
                          child: MyButton(
                            label: 'x',
                            labelColor: Colors.amber,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                      ],
                    ),
                    //Row four
                    Row(
                      children: [
                        Expanded(
                          child: MyButton(
                            label: '4',
                            labelColor: Colors.white,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                        Expanded(
                          child: MyButton(
                            label: '5',
                            labelColor: Colors.white,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                        Expanded(
                          child: MyButton(
                            label: '6',
                            labelColor: Colors.white,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                        Expanded(
                          child: MyButton(
                            label: '-',
                            labelColor: Colors.amber,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                      ],
                    ),

                    //Row five
                    Row(
                      children: [
                        Expanded(
                          child: MyButton(
                            label: '1',
                            labelColor: Colors.white,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                        Expanded(
                          child: MyButton(
                            label: '2',
                            labelColor: Colors.white,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                        Expanded(
                          child: MyButton(
                            label: '3',
                            labelColor: Colors.white,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                        Expanded(
                          child: MyButton(
                            label: '+',
                            labelColor: Colors.amber,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                      ],
                    ),

                    //Row six
                    Row(
                      children: [
                        Expanded(
                          child: MyButton(
                            label: '+/-',
                            labelColor: Colors.white,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                        Expanded(
                          child: MyButton(
                            label: '0',
                            labelColor: Colors.white,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                        Expanded(
                          child: MyButton(
                            label: '.',
                            labelColor: Colors.white,
                            onTap: null,
                            bgColor: Colors.white10,
                          ),
                        ),
                        Expanded(
                          child: MyButton(
                            label: '=',
                            labelColor: Colors.black,
                            onTap: null,
                            bgColor: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
