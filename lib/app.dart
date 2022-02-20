import 'package:flutter/material.dart';
import 'package:guitar_shop_practice/StorePage.dart';
import 'package:guitar_shop_practice/resources/theme/CustomAppTheme.dart';

class GuitarShopApp extends StatelessWidget {
  const GuitarShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
      //themeMode: currentTheme.currentTheme,
      home: const StorePage(),
    );
  }
}
