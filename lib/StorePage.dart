import 'package:flutter/material.dart';
import 'package:guitar_shop_practice/constants.dart';
import 'package:guitar_shop_practice/resources/theme/ThemeState.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;
import 'GuitarBackground.dart';
import 'ShowRoom.dart';
import 'models/Guitar.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  List<Guitar> guitarList = Guitar.list;
  double angleOfHamMenu = 0;

  changeTheme() async {
    var provider = Provider.of<ThemeState>(context, listen: false);
    String value = "";
    provider.userTheme == Constants.themePreferenceDark? value = Constants.themePreferenceLight : value = Constants.themePreferenceDark;
    Provider.of<ThemeState>(context, listen: false).userTheme = value;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Transform.rotate(
            angle: angleOfHamMenu,
            child: GestureDetector(
              onTap: () => {
              setState(() {
                changeTheme();
                angleOfHamMenu == 0 ? angleOfHamMenu = math.pi/2 : angleOfHamMenu = 0;
              })
            }, // TODO
              child: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Guitar shop",
                  ),
                  Icon(Icons.music_note_sharp)
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              height: 300,
              margin: EdgeInsets.symmetric(vertical: 16),
              child: ListView.builder(
                itemCount: guitarList.length,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 16),
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
                            child: GuitarBackground(index, 230),
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
                                      "images/${guitarList[index].imgPath}"),
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

  TextStyle MainHeader() {
    return const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  );
  }
}
