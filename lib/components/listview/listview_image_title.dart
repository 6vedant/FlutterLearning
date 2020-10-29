import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/component.dart';
import 'package:flutter_app/components/custom_button.dart';
import 'package:flutter_app/components/model/LocationItem.dart';

class listview_image_title extends StatelessWidget {
  final List<LocationItem> locations;

  listview_image_title(this.locations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("ListviewDemo", style: TextStyle(fontFamily: 'Apercu'))),
        body: ListView.builder(
          itemCount: this.locations.length,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: EdgeInsets.all(10.0),
              leading: _itemThumbnail(this.locations[index]),
              title: _itemTitle(this.locations[index]),
              onTap: () => _navigateToOther(context, this.locations[index]),
            );
          },
        ),
      floatingActionButton: CustomButton(
        onPressed: (){print("custom button clicked");},
      ),
    );
  }

  void _navigateToOther(BuildContext buildContext, LocationItem locationItem){
    Navigator.push(buildContext, MaterialPageRoute(
      builder: (context) => component(),
    ));
  }

  Widget _itemThumbnail(LocationItem locationItem) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: Image.network(locationItem.image_url, fit: BoxFit.fitWidth),
    );
  }

  Widget _itemTitle(LocationItem locationItem) {
    return Text(locationItem.title, style: TextStyle(
      fontFamily: 'Apercu'
    ));
  }
}
