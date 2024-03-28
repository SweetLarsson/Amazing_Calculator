import 'package:amazing_calculator/data/menu_item.dart';
import 'package:amazing_calculator/models/menu_items.dart';
import 'package:amazing_calculator/resources/icons.dart';
import 'package:amazing_calculator/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/popup_menu.dart';
import '../../resources/dimensions.dart';
import '../../resources/strings.dart';
import '../../routes/menu_route.dart';
import '../../widgets/drawer.dart';
import 'application_index.dart';

class ApplicationPage extends GetView<ApplicationController> {
  const ApplicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///Drawer
      drawer: const MyDrawer(),

      ///AppBar
      appBar: AppBar(
        elevation: 0,
        actions: [
          GetBuilder<ApplicationController>(
            builder: (_) =>
                Switch(
                  splashRadius: 5,
                  thumbIcon: MaterialStateProperty.all(const Icon(night)),
                  value: controller.isDark,
                  onChanged: (state) => controller.changeMyTheme(state),
                ),
          ),
          PopupMenuButton<MenuItem>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) =>
            [
              ...MenuItems.itemsFirst.map((buildItem)),
              const PopupMenuDivider(),
              ...MenuItems.itemsSecond.map((buildItem)),
            ],
          ),
        ],
        title: const ListTile(
          title: Text(
            hello,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            appNote,
            softWrap: true,
            style: TextStyle(
                fontStyle: FontStyle.italic, fontSize: MyDimensions.d12),
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
                    //color: Colors.white10,
                  ),

                  ///displayed value on screen
                  child: Text(
                    controller.output,
                    style: const TextStyle(
                      fontSize: MyDimensions.d100,
                    ),
                  ),
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
                        onTap: null,
                      ),
                      MyButton(
                        label: 'Clear',
                        onTap: null,
                      ),
                      MyButton(
                        label: '%',
                        onTap: null,
                      ),
                      MyButton(
                        label: 'x',
                        onTap: null,
                      ),
                    ],
                  ),
                  //Row three
                  Row(
                    children: [
                      MyButton(
                        label: '7',
                        onTap: () => controller.keypadOnPressed,
                      ),
                      const MyButton(
                        label: '8',
                        onTap: null,
                      ),
                      const MyButton(
                        label: '9',
                        onTap: null,
                      ),
                      const MyButton(
                        label: '/',
                        onTap: null,
                      ),
                    ],
                  ),
                  //Row four
                  const Row(
                    children: [
                      MyButton(
                        label: '4',
                        onTap: null,
                      ),
                      MyButton(
                        label: '5',
                        onTap: null,
                      ),
                      MyButton(
                        label: '6',
                        onTap: null,
                      ),
                      MyButton(
                        label: '-',
                        onTap: null,
                      ),
                    ],
                  ),

                  //Row five
                  const Row(
                    children: [
                      MyButton(
                        label: '1',
                        onTap: null,
                      ),
                      MyButton(
                        label: '2',
                        onTap: null,
                      ),
                      MyButton(
                        label: '3',
                        onTap: null,
                      ),
                      MyButton(
                        label: '+',
                        onTap: null,
                      ),
                    ],
                  ),

                  //Row six
                  const Row(
                    children: [
                      MyButton(
                        label: '00',
                        onTap: null,
                      ),
                      MyButton(
                        label: '0',
                        onTap: null,
                      ),
                      MyButton(
                        label: '.',
                        onTap: null,
                      ),
                      MyButton(
                        label: '=',
                        onTap: null,
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
