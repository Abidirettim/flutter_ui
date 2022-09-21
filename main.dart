import 'package:flutter/material.dart';
import 'package:flutterui/views/change_password.dart';
import 'package:flutterui/views/color-pallette.dart';
import 'package:flutterui/views/facilities.dart';
import 'package:flutterui/views/forget_password.dart';
import 'package:flutterui/views/loading.dart';
import 'package:flutterui/views/login.dart';
import 'package:flutterui/views/main_dashboard.dart';
import 'package:flutterui/views/profile.dart';
import 'package:flutterui/views/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = true;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bura Nere Bilmiyom',
      theme: isDark
          ? ThemeData(
              dividerColor: ColorPallette.mainTextDark,
              scaffoldBackgroundColor: ColorPallette.mainBgDark,
              colorScheme: ColorScheme.dark(primary: ColorPallette.primary))
          : ThemeData(
              dividerColor: ColorPallette.darkBg,
              scaffoldBackgroundColor: ColorPallette.mainBgLight,
              colorScheme: ColorScheme.light(primary: ColorPallette.primary)),
      home: const Login(),
    );
  }
}
