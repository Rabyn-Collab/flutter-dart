import 'package:flutter/material.dart';
import 'package:fluttermangsir/app_data/book_data.dart';
import 'package:fluttermangsir/pages/book_detail/book_detail.dart';
import 'package:fluttermangsir/pages/home_page.dart';



void main (){
  // final numbers = [11,22,33,44,55];
  // final n  = numbers.map((n){
  //   return n * 2;
  // }).toList();
  //
  // print(n);
  runApp(Main());
}



class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       // theme: ThemeData.dark(),
     // home: HomePage(),
      home: BookDetail(),
    );
  }
}
