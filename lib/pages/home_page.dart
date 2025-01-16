import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermangsir/constants/app_sizes.dart';
import 'package:fluttermangsir/pages/home_widgets/book_list.dart';
import 'package:fluttermangsir/pages/home_widgets/book_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      ///app bar
        appBar: AppBar(
          leading: Icon(CupertinoIcons.bars),
          actions: [
            IconButton(
                onPressed: () {
                },
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                },
                icon: Icon(Icons.notifications)),
          ],

        ),



        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              gapH10,
              BookSlider(),
              gapH12,
              Text('You might like'),
              gapH16,
              BookList(),
              gapH16,
            ],
          )
        )
    );
  }


}
