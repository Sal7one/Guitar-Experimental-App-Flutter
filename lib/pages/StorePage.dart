import 'package:flutter/material.dart';
import 'package:fluttericon/typicons_icons.dart';
import 'package:guitar_shop_practice/constants.dart';
import 'package:guitar_shop_practice/resources/theme/ThemeState.dart';
import 'package:provider/provider.dart';
import 'GuitarBackground.dart';
import 'ShowRoom.dart';
import '../models/Guitar.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  List<Guitar> guitarList = Guitar.list;
  late var themeProvider;

  changeTheme() async {
    themeProvider = Provider.of<ThemeState>(context, listen: false);
    String value = "";
    isDark()
        ? value = Constants.themePreferenceLight
        : value = Constants.themePreferenceDark;
    Provider.of<ThemeState>(context, listen: false).userTheme = value;
  }

  @override
  void initState() {
    themeProvider = Provider.of<ThemeState>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
            AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
          GestureDetector(
            onTap: () => {
              setState(() {
                changeTheme();
              })
            }, // TODO
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Icon(
                isDark() ? Typicons.contrast : Typicons.sun,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ),
        ]),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Text(
                    Constants.storePageTitle,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const Icon(Icons.music_note_sharp)
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              height: 300,
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: ListView.builder(
                itemCount: guitarList.length,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) =>
                              ShowRoom(theGuitar: guitarList[index]),
                        ),
                      );
                    },
                    child: Container(
                      width: 230,
                      margin: const EdgeInsets.only(right: 16),
                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: GuitarBackground(index, 230, context),
                          ),
                          Positioned(
                            right: 55,
                            bottom: 55,
                            child: Hero(
                              tag: "hero${guitarList[index].imgPath}",
                              child: Transform.rotate(
                                angle: -0.4,
                                child: Image(
                                  width: 75,
                                  image: AssetImage(
                                      "images/${guitarList[index].imgPath}"), // TODO IMAGE HELPER UTIL
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  isDark() => themeProvider.userTheme == Constants.themePreferenceDark;
}
