import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
            onTap: ()=>{print("TODO") }, // TODO
            child: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        )
        ,
        body: ListView(
          children:  [
            Padding(
              padding: const EdgeInsets.all(16),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  const [
                Text("Guitar shop"),
                Icon(Icons.music_note_sharp)
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
