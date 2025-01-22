import 'package:flutter/material.dart';
import 'package:fluttermangsir/routes/route_enum.dart';
import 'package:go_router/go_router.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              context.pushNamed(AppRoute.form.name);
            },
            child: Text('Go To Form'),
          ),

          TextButton(
            onPressed: () {
              context.pushNamed(AppRoute.grid.name);
            },
            child: Text('Go To Grid Page'),
          ),
        ],
      ),
    );
  }
}
