import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermangsir/pages/business/business_page.dart';
import 'package:fluttermangsir/pages/comic/comic_page.dart';
import 'package:fluttermangsir/pages/design/design_page.dart';
import 'package:fluttermangsir/pages/overview/over_view_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

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
            bottom: TabBar(
                unselectedLabelColor: Colors.grey,
                labelStyle: TextStyle(color: Colors.black),
                tabs: [
                  Tab(text: 'Overview'),
                  Tab(text: 'Business'),
                  Tab(text: 'Design'),
                  Tab(text: 'Comic'),
                ]),
          ),



          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TabBarView(
                children: [

                  OverViewPage(),
                  BusinessPage(),
                  DesignPage(),
                  ComicPage()




            ]
            ),
          )
      ),
    );
  }


}
