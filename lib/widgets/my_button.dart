import 'package:amazing_calculator/resources/dimensions.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String? label;
  final IconData? pIcon;
  final IconData? sIcon;
  final IconData? mainIcon;
  final Color? bgColor;
  final Color? labelColor;
  final Color? hoverColor;
  final Color? iconColor;
  final double? height = MyDimensions.d50;
  final Function()? onTap;

  const MyButton({
    super.key,
    this.label,
    this.mainIcon,
    this.pIcon,
    this.sIcon,
    this.bgColor,
    this.labelColor,
    this.hoverColor,
    this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(MyDimensions.d0_5),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            height: height,
            decoration: BoxDecoration(

              ///button background Colour
              color: bgColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///prefix Icon
                Icon(
                  pIcon,
                  color: iconColor,
                ),
      
                ///button label
                Text(
                  label!,
                  style: TextStyle(
                    color: labelColor,
                    fontWeight: FontWeight.normal,
                  ),
                ),
      
                ///CenterIcon
                /*Icon(
                  mainIcon,
                  color: iconColor,
                ),*/
      
                ///suffix Icon
                Icon(
                  sIcon,
                  color: iconColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
