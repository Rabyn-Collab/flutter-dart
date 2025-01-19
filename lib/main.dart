import 'package:flutter/material.dart';
import 'package:fluttermangsir/routes/app_routes.dart';





void main (){
  runApp(Main());
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
