
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/model/LocationItem.dart';

class listview_image_title extends StatelessWidget{

  final List<LocationItem> locations;
  listview_image_title(this.locations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListviewDemo")),
      body: ListView.builder(
        itemCount: this.locations.length,
        itemBuilder: (context, index){
          return ListTile(
            contentPadding: EdgeInsets.all(10.0),
            leading: _itemThumbnail(this.locations[index]),
            title: _itemTitle(this.locations[index]),
          );
        },
      )
    );
  }

  Widget _itemThumbnail(LocationItem locationItem){
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: Image.network(locationItem.image_url, fit: BoxFit.fitWidth),
    );
  }

  Widget _itemTitle(LocationItem locationItem){
    return Text(locationItem.title);
  }

}