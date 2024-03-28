import 'package:amazing_calculator/data/menu_items.dart';
import 'package:amazing_calculator/models/menu_items.dart';
import 'package:amazing_calculator/resources/colors.dart';
import 'package:amazing_calculator/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../Routes/RouteName.dart';
import '../../resources/dimensions.dart';
import '../../resources/strings.dart';
import '../../widgets/drawer.dart';
import 'application_controller.dart';
import 'application_index.dart';

class ApplicationPage extends GetView<ApplicationController> {
  const ApplicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    ///Menu Protocol
    PopupMenuItem<MenuItem> buildItem(MenuItem item) =>
        PopupMenuItem<MenuItem>(
          value: item,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.label,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Icon(
                item.icon,
                color: Colors.black,
              ),
            ],
          ),
        );

    return Scaffold(
      backgroundColor: MyColors.black,

      ///Drawer
      drawer: const MyDrawer(),

      ///AppBar
      appBar: AppBar(
        elevation: 0,
        actions: [
          GetBuilder<ApplicationController>(
            builder: (_) => Switch(
                value: controller.isDark,
                onChanged: (state) {
                  print('The switch is selected');
                  controller.changeTheme(state);
                }),
          ),
          PopupMenuButton<MenuItem>(
            color: Colors.white54,
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              ...MenuItems.itemsFirst.map((buildItem)),
              const PopupMenuDivider(),
              ...MenuItems.itemsSecond.map((buildItem)),
            ],
          ),
        ],
        backgroundColor: Colors.black87,
        title: const ListTile(
          title: Text(
            'Hello,',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            "You're currently using $std Calculator",
            softWrap: true,
            style: TextStyle(
                color: Colors.white54,
                fontStyle: FontStyle.italic,
                fontSize: MyDimensions.d12),
            overflow: TextOverflow.ellipsis,
          ),
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
              padding: const EdgeInsets.symmetric(horizontal: MyDimensions.d5),
              child: Column(
                children: [
                  //Row one
                  const Row(
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
                      const MyButton(
                        label: '8',
                        labelColor: Colors.white,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                      const MyButton(
                        label: '9',
                        labelColor: Colors.white,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                      const MyButton(
                        label: '/',
                        labelColor: Colors.amber,
                        onTap: null,
                        bgColor: Colors.white10,
                      ),
                    ],
                  ),
                  //Row four
                  const Row(
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
                  const Row(
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
                  const Row(
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

  /// OnMenu Item Selection
  Future<void> onSelected(BuildContext context, MenuItem item) async {
    switch (item) {
      case MenuItems.itemSettings:
        Get.offAndToNamed(RouteName.Splash);
        break;
      case MenuItems.itemShare:
        Get.offAndToNamed(RouteName.Splash);
    }
  }
}
