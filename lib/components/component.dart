import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class component extends StatelessWidget {
  static const String IMAGE_URL = "https://p.bigstockphoto.com/GeFvQkBbSLaMdpKXF1Zv_bigstock-Aerial-View-Of-Blue-Lakes-And--227291596.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Toobar")),
    body: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: getTextWidgets(
    IMAGE_URL
    )
    ));
  }

  Widget _section(String title, Color color, Color textColor,
      TextAlign textAlign) {
    return InkWell(
        onTap: () {
          print("clicked: " +
              color.toString() +
              " title: " +
              title +
              " textColor: " +
              textColor.toString());
        },
        child: Container(
            decoration: BoxDecoration(color: color),
            child: Text(title,
                style: TextStyle(color: textColor), textAlign: textAlign)));
  }

  List<Widget> getTextWidgets(String url) {
    List<Widget> result = new List();
    result.add(getImage(url));
    result.add(getTitle("The title is here."));
    for (int i = 0; i < 10; i++) {
      result.add(_section("one"+i.toString(), Colors.red, Colors.white, TextAlign.right));
    }
    return result;
  }

  Widget getImage(String url) {
    return Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        child: Image.network(url, fit: BoxFit.fitWidth));
  }

  Widget getTitle(String title){
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      child: Text(title,
            style: TextStyle(fontSize: 20.1, color: Colors.black), textAlign: TextAlign.left)
    );
  }

}
