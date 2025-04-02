import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/app_theme/app_sizes.dart';
import 'package:mvvm/pages/widgets/book_list.dart';
import 'package:mvvm/pages/widgets/carousel_widget.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Hi John,'),
        actions: [
          IconButton(
              onPressed: () {
          }, icon: Icon(CupertinoIcons.search)),
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),

          // Icon(CupertinoIcons.arrow_left_circle_fill),
          // Icon(Icons.accessible_forward_rounded),
        ],
        // centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(

          children: [
            AppSizes.gapH10,
            ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50) ,
                  bottomRight: Radius.circular(90)
                ),
                child: Image.asset('assets/images/aaron-burden-puvq2iRex5Y-unsplash.jpg')),

          AppSizes.gapH16,

            BookList(),
            AppSizes.gapH16,
            CarouselWidget()

          ],
        ),
      )


    );
  }
}
