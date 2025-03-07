import 'package:flutter/material.dart';
import 'package:mvvm/feature/home/view/widgets/drawer_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerWidget(),
        body: const Placeholder()
    );
  }
}
