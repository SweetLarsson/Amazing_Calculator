import 'package:flutter/material.dart';

class ThemeClass {
  Color lightPrimaryColor = Colors.white;
  Color darkPrimaryColor = Colors.white10;
  Color greenPrimaryColor = Colors.green;
  Color purplePrimaryColor = Colors.purple;
  Color amberPrimaryColor = Colors.amber;

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light()
        .copyWith(primary: _themeClass.lightPrimaryColor),

    //Elevated Color light Theme configuration
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 55),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => _themeClass.lightPrimaryColor,
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) =>
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero))),
        textStyle: MaterialStateProperty.resolveWith(
          (states) => const TextStyle(fontWeight: FontWeight.normal),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark()
        .copyWith(primary: _themeClass.darkPrimaryColor),

    //Elevated Color Dark Theme configuration
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 55),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) => _themeClass.lightPrimaryColor,
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) =>
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero))),
        textStyle: MaterialStateProperty.resolveWith(
          (states) => const TextStyle(fontWeight: FontWeight.normal),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
    ),
  );
}

ThemeClass _themeClass = ThemeClass();
