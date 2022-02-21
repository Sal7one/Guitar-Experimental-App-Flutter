import 'package:flutter/material.dart';
import 'package:guitar_shop_practice/pages/StorePage.dart';
import 'package:guitar_shop_practice/resources/theme/CustomAppTheme.dart';
import 'package:guitar_shop_practice/resources/theme/ThemeState.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class GuitarShopApp extends StatelessWidget {
  const GuitarShopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <SingleChildWidget>[
        ChangeNotifierProvider<ThemeState>.value(
          value: ThemeState(),
        ),
      ],
      child: const MaterialAppWithPreferences(),
    );
  }
}

class MaterialAppWithPreferences extends StatelessWidget {
  const MaterialAppWithPreferences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = context.watch<ThemeState>();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
      themeMode: themeState.theme,
      home: const StorePage(),
    );
  }
}
