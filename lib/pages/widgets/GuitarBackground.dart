import 'package:flutter/material.dart';
import 'helpers/AppClipper.dart';
import 'package:guitar_shop_practice/models/Guitar.dart';

Widget GuitarBackground(int index, double width, BuildContext context) {
  List<Guitar> guitarList = Guitar.list;

  return ClipPath(
    clipper: AppClipper(cornerSize: 26, diagonalHeight: 135),
    child: Container(
      color: guitarList[index].color,
      width: width,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Icon(
                    Icons.music_note_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                const Expanded(child: SizedBox()),
                SizedBox(
                  width: 125,
                  child: Text(
                    guitarList[index].name,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "${guitarList[index].price} \$",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
