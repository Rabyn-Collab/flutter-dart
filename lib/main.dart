import 'package:flutter/material.dart';
import 'package:fluttermangsir/pages/home_page.dart';
import 'package:get/get.dart';



void main (){
  // final numbers = [11,22,33,44,55];
  // final n  = numbers.map((n){
  //   return n * 2;
  // }).toList();
  //
  // print(n);
  runApp(Main());
}


//something to do
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
       // theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
