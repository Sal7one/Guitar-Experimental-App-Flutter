import 'package:flutter/material.dart';
import '../models/Guitar.dart';

class ShowRoom extends StatefulWidget {
  final Guitar theGuitar;

  const ShowRoom({Key? key, required this.theGuitar}) : super(key: key);

  @override
  _ShowRoomState createState() => _ShowRoomState();
}

class _ShowRoomState extends State<ShowRoom> {
  var _theGuitar;

  @override
  Widget build(BuildContext context) {
    _theGuitar = widget.theGuitar;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(_theGuitar.name),
        ),
        body: buildDetailBody(),
      ),
    );
  }

  Widget buildDetailBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Transform.rotate(
            angle: 0.4,
            child: Image(
              width: 75,
              image: AssetImage("images/${_theGuitar.imgPath}"),
            ),
          ),
        ],
      ),
    );
  }
}
