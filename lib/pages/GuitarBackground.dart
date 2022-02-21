import 'package:flutter/material.dart';
import '../widgets/helpers/AppClipper.dart';
import '../models/Guitar.dart';
import 'package:guitar_shop_practice/utils/extensions.dart';

Widget GuitarBackground(int index, double width, BuildContext context) {
  List<Guitar> guitarList = Guitar.list;

  return ClipPath(
    clipper: AppClipper(cornerSize: 25, diagonalHeight: 100),
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
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   right: 0,
          //   child: Container(
          //     width: 50,
          //     height: 50,
          //     decoration: const BoxDecoration(
          //       color: Colors.green,
          //       borderRadius: BorderRadius.only(
          //         topLeft: Radius.circular(10),
          //       ),
          //     ),
          //     child: const Center(
          //       child: Icon(
          //         Icons.add,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    ),
  );
}
