import 'package:amazing_calculator/resources/dimensions.dart';
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final IconData? leadingIcon;
  final bool? dense;
  final String? label;
  final void Function()? onTap;

  const MyListTile({
    super.key,
    this.leadingIcon,
    this.dense,
    this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        label!,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      //could see
      dense: dense,
      style: ListTileStyle.list,

      //can't see
      enabled: true,
      autofocus: true,
      hoverColor: Colors.white,
      splashColor: Colors.white,
      focusColor: Colors.white70,
      enableFeedback: true,

      ///style: ListTileStyle.drawer,

      leading: Icon(
        leadingIcon,
        size: MyDimensions.d20,
        color: Colors.white,
      ),
    );
  }
}
