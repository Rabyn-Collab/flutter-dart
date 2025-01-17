import 'package:flutter/material.dart';
import 'package:fluttermangsir/pages/home_page.dart';
import 'package:get/get.dart';



void main (){

runApp(Main());
}



class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
