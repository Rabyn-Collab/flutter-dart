import 'package:flutter/material.dart';
import 'package:fluttermangsir/routes/app_routes.dart';




int? a;

void main (){
  runApp(Main());
 // a = 90;
// final c = a ?? 9;
// final m =   c + 10;
// print(m);
  // print(a ?? 9 + 10);
  print( a! + 10);
  // if(a == null){
  //   print('no- data');
  // }else{
  //   print( a! + 10);
  // }



}


class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
