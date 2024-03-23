import 'package:amazing_calculator/resources/strings.dart';
import 'package:amazing_calculator/widgets/my_list_tile.dart';
import 'package:amazing_calculator/widgets/transparent_background.dart';
import 'package:flutter/material.dart';
import '../resources/dimensions.dart';
import '../resources/icons.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero),
        ),
        backgroundColor: Colors.black12,
        width: MyDimensions.d250,
        elevation: 0,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              TransparentBackground(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(height: MyDimensions.d10),
                      //Calculator Sub-head
                      ListTile(
                        title: Text(
                          calc,
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: MyDimensions.d20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
      
                      ///standard selection
                      MyListTile(
                        label: std,
                        dense: true,
                        leadingIcon: stdIcon,
                      ),
      
                      ///scientific selection
                      MyListTile(
                        label: sci,
                        dense: true,
                        leadingIcon: sciIcon,
                      ),
      
                      ///programmer selection
                      MyListTile(
                        label: pro,
                        dense: true,
                        leadingIcon: proIcon,
                      ),
      
                      ///date selection
                      MyListTile(
                        label: date,
                        dense: true,
                        leadingIcon: dateIcon,
                      ),
      
                      //Converter Sub-head
                      ListTile(
                        title: Text(
                          conv,
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: MyDimensions.d20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
      
                      ///currency selection
                      MyListTile(
                        label: cur,
                        dense: true,
                        leadingIcon: curIcon,
                      ),
      
                      ///volume selection
                      MyListTile(
                        label: vol,
                        dense: true,
                        leadingIcon: volIcon,
                      ),
      
                      ///length selection
                      MyListTile(
                        label: len,
                        dense: true,
                        leadingIcon: lenIcon,
                      ),
      
                      ///weight and mass selection
                      MyListTile(
                        label: wei,
                        dense: true,
                        leadingIcon: weiIcon,
                      ),
      
                      ///temperature selection
                      MyListTile(
                        label: tem,
                        dense: true,
                        leadingIcon: temIcon,
                      ),
      
                      ///energy selection
                      MyListTile(
                        label: ene,
                        dense: true,
                        leadingIcon: eneIcon,
                      ),
      
                      ///area selection
                      MyListTile(
                        label: are,
                        dense: true,
                        leadingIcon: areIcon,
                      ),
      
                      ///speed selection
                      MyListTile(
                        label: spe,
                        dense: true,
                        leadingIcon: speIcon,
                      ),
      
                      ///time selection
                      MyListTile(
                        label: tim,
                        dense: true,
                        leadingIcon: timIcon,
                      ),
      
                      ///power selection
                      MyListTile(
                        label: pow,
                        dense: true,
                        leadingIcon: powIcon,
                      ),
      
                      ///data selection
                      MyListTile(
                        label: data,
                        dense: true,
                        leadingIcon: datIcon,
                      ),
      
                      ///pressure selection
                      MyListTile(
                        label: pres,
                        dense: true,
                        leadingIcon: presIcon,
                      ),
      
                      ///angle selection
                      MyListTile(
                        label: ang,
                        dense: true,
                        leadingIcon: angIcon,
                      ),
                    ],
                  ),
      
                  ///Bottom Nav
                  ///About Application
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: MyDimensions.d15),
                    child: MyListTile(
                      label: abt,
                      dense: true,
                      leadingIcon: abtIcon,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
