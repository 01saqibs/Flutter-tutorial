

import 'package:flutter/cupertino.dart';
import 'package:flutter_tutorial/utlits/list_of_tutorials.dart';


class Data {
  final int id;
  final String name;
  final Widget? page;
  final String? documentation;
  final String? code;
  Data({ required this.id, required this.name, this.page, this.code, this.documentation});
}

List<Data> data = [
  Data(id: 1, name: "Material App",page: const MaterialAppTut(), documentation: "assets/doc/doc.txt"),
  Data(id: 2, name: "Scaffold", page: const ScaffoldTut()),
  Data(id: 3, name: "AppBar"),
  Data(id: 4, name: "Container"),
  Data(id: 5, name: "Text"),
  Data(id: 6, name: "Button"),
  Data(id: 7, name: "Snack Bar"),
  Data(id: 8, name: "Alert"),
  Data(id: 9, name: "Column"),
  Data(id: 9, name: "Row"),
  Data(id: 10, name: "Icon"),
  Data(id: 11, name: "Image"),
  Data(id: 12, name: "List View"),
  Data(id: 13, name: "Grid View"),
  Data(id: 14, name: "Sliver AppBar"),
  Data(id: 15, name: "Sliver List"),
  Data(id: 16, name: "Animated Icon"),
  Data(id: 17, name: "Expanded"),
  Data(id: 18, name: "Wrap"),
  Data(id: 19, name: "Sized Box"),
  Data(id: 20, name: "Stack"),
  Data(id: 11, name: "Cupertino Page Scaffold"),
  Data(id: 22, name: "Hero"),
  Data(id: 23, name: "Drawer"),
  Data(id: 24, name: "Backdrop Flutter"),
  Data(id: 25, name: "Dismissible"),
  Data(id: 25, name: "Card"),
  Data(id: 27, name: "Chip"),
  Data(id: 28, name: "Stepper"),

];



