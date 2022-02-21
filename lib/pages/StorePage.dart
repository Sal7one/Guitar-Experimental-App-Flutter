import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:guitar_shop_practice/constants.dart';
import 'package:guitar_shop_practice/pages/About.dart';
import 'package:guitar_shop_practice/pages/GuitarRoom.dart';
import 'package:guitar_shop_practice/resources/theme/ThemeState.dart';
import 'package:provider/provider.dart';
import 'package:guitar_shop_practice/models/Guitar.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  List<Guitar> guitarList = Guitar.list;
  late var themeProvider;
  int currentPage = 0;

  @override
  void initState() {
    themeProvider = Provider.of<ThemeState>(context, listen: false);
  }

  changeTheme() async {
    themeProvider = Provider.of<ThemeState>(context, listen: false);
    String value = "";
    isDark()
        ? value = Constants.themePreferenceLight
        : value = Constants.themePreferenceDark;
    Provider.of<ThemeState>(context, listen: false).userTheme = value;
  }

  isDark() => themeProvider.userTheme == Constants.themePreferenceDark;

  void _onItemTapped(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(FontAwesome5.guitar),
              label: 'Store',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesome5.info),
              label: 'About',
            ),
          ],
          currentIndex: currentPage,
          backgroundColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          selectedItemColor:
              Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          onTap: _onItemTapped,
        ),
        appBar:
            AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
          GestureDetector(
            onTap: () => {
              setState(() {
                changeTheme();
              })
            },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Icon(
                isDark() ? Typicons.contrast : Typicons.sun,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ),
        ]),
        body: currentPage == 0? GuitarRoom(guitarList: guitarList) : const About(),
      ),
    );
  }
}
