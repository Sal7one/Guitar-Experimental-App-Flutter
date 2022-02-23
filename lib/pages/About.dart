import 'package:flutter/material.dart';
import 'package:guitar_shop_practice/repository/Constants.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: Text(
              Constants.aboutPageTitle,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: Text(
              Constants.aboutPageWelcome,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60), // Image border
              child: GestureDetector(
                onTap: openLink,
                child: SizedBox.fromSize(
                  child: Image.network(
                    "https://avatars.githubusercontent.com/u/20628286?v=4",
                    width: 210,
                    height: 210,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: Text(
              Constants.aboutPageDetails,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
  void openLink() async {
    var _url = "https://Github.com/Sal7one";
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}
