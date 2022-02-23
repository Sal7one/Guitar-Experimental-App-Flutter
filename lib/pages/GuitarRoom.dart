
import 'package:flutter/material.dart';
import 'package:guitar_shop_practice/pages/widgets/GuitarBackground.dart';
import 'package:guitar_shop_practice/constants.dart';
import 'package:guitar_shop_practice/models/Guitar.dart';
import 'ShowRoom.dart';

class GuitarRoom extends StatelessWidget {
  const GuitarRoom({
    Key? key,
    required this.guitarList,
  }) : super(key: key);

  final List<Guitar> guitarList;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Constants.storePageTitle,
                style: Theme.of(context).textTheme.headline5,
              ),
              const Icon(Icons.music_note_sharp)
            ],
          ),
        ),
        const SizedBox(
          height: 60,
        ),
        Container(
          height: 320,
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
                        right: 36,
                        bottom: 75,
                        child: Hero(
                          tag: "hero${guitarList[index].imgPath}",
                          child: Transform.rotate(
                            angle: -0.35,
                            child: Image(
                              height: 225,
                              image: AssetImage(
                                  "images/${guitarList[index].imgPath}"), // TODO IMAGE HELPER UTIL for folders
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
    );
  }
}
