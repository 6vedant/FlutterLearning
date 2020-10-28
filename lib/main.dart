import 'package:flutter/material.dart';
import 'package:flutter_app/components/component.dart';
import 'package:flutter_app/components/listview/listview_image_title.dart';
import 'package:flutter_app/components/model/LocationItem.dart';

void main() {
  List<LocationItem> list = new List();
  list.clear();
 for(int i=0;i<100;i++){
   list.add(new LocationItem(i.toString()+" title", component.IMAGE_URL));
 }

  return (runApp(MaterialApp(home: listview_image_title(list))));
}
