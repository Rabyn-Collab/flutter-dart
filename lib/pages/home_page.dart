import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  Container(
          width: 200,
          child: Card(
            color: Colors.orange,
             child: Padding(
               padding: const EdgeInsets.all(10.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('TiME'),
                       Container(
                         height: 30,
                         width: 30,
                         decoration: BoxDecoration(
                           color: Colors.red,
                           borderRadius: BorderRadius.circular(5)
                         ),
                         child: Icon(Icons.archive_rounded),
                        
                       ),
                     ],
                   ),
                   Row(
                     children: [
                       CircleAvatar(
                       ),
                       Text('6:24')

                     ],
                   ),
                   Text('Day streak, comeback tomorrow to keep it up!'),

                 ],
               ),
             )
          ),
        ),
        // GridView.builder(
        //   physics: NeverScrollableScrollPhysics(),
        //   shrinkWrap: true,
        //   itemCount: 10,
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 2
        //     ),
        //     itemBuilder: (context, index){
        //       return Text('hello');
        //     }
        // ),

      ),
    );
  }
}









