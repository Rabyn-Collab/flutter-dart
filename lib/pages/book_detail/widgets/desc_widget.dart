import 'package:flutter/material.dart';
import 'package:fluttermangsir/constants/app_data.dart';


class DescWidget extends StatelessWidget {
  const DescWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(
                tabs: [
                  Tab(text: 'Overview',),
                  Tab(text: 'Reviews',),
                ]
            ),
            Container(
              height: 200,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TabBarView(
                  children: [
                Text(overview, style: TextStyle(fontSize: 15, height: 1.5, fontWeight: FontWeight.w500),),
                Text(overview, style: TextStyle(fontSize: 15, height: 1.5, fontWeight: FontWeight.w500),),

              ]),
            )
          ],
        )
    );
  }
}
