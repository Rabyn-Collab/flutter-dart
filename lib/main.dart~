import 'package:flutter/material.dart';
import 'package:magh/app_theme/app_colors.dart';
import 'package:magh/routes/app_routes.dart';


void main (){

runApp(Home());
}




class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.backGroundColor
        ),
        scaffoldBackgroundColor: AppColors.backGroundColor
      ),
    );
  }
}
