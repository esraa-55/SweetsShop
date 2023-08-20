import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DataModel {
  String?title;
  String?imageName;
  // String? price;
  String? subtitle;
  DataModel(
      this.title,
      this.imageName,
      // this.price,
      this.subtitle,
      );


  DataModel.fromJson(Map<String,dynamic>json){
    title =json["title"];
    subtitle=json["subtitle"];
    // price=json["price"];
    imageName= json["imageName"];

  }
  Map<String,dynamic>toMap(){
    return {
     "title" :title,
     "subtitle" :subtitle,
     // "price" :price,
     "imageName" :imageName,
    };
  }
}

List<DataModel> dataList = [
  DataModel("Pancake", "assets/istockphoto-696365602-612x612.jpg", "your favourite Pancake"),
  DataModel("Birthday Cake", "assets/istockphoto-865586350-612x612.jpg", "your favourite Pancake"),
  DataModel("Waffle", "assets/istockphoto-1266680562-612x612-removebg-preview.png", "your favourite Waffle "),
  DataModel("Drinks", "assets/istockphoto-1417339843-612x612.jpg", "your favourite Drinks"),
];
