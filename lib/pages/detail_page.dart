import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mvvm/app_theme/app_sizes.dart';
import 'package:mvvm/models/book.dart';


class DetailPage extends StatefulWidget {
  final Book book;
  const DetailPage({super.key, required this.book});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool opa = false;
  bool align = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  AnimatedOpacity(
        opacity: opa? 0.5: 1,
        duration: Duration(milliseconds: 500),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: NetworkImage(widget.book.image))
          ),
          child: AnimatedAlign(
            curve: Curves.fastOutSlowIn,
            duration: Duration(milliseconds: 500),
            alignment: align? Alignment.center: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              height:  400,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.book.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),),
                        Column(
                          children: [
                            Text(widget.book.rating),
                            Text(widget.book.genre),
                          ],
                        )
                      ],
                    ),
                    AppSizes.gapH16,
                    Text(widget.book.detail),
                    AppSizes.gapH16,
                    Row(
                      children: [
                        ElevatedButton(onPressed: (){
                          setState(() {
                            align = !align;
                          });
                        }, child: Text('Read Book')),
                        AppSizes.gapW10,
                        OutlinedButton(onPressed: (){
                          setState(() {
                            opa=!opa;
                          });
                        }, child: Text('Download ')),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      )

      // Stack(
      //   children: [
      //    Column(
      //      children: [
      //        CachedNetworkImage(imageUrl: book.image),
      //      ],
      //    ),
      //     Positioned(
      //       bottom: 0,
      //       child: Container(
      //         height: 500,
      //         color: Colors.white,
      //         child: SingleChildScrollView(
      //           child: Padding(
      //             padding: const EdgeInsets.all(10.0),
      //             child: Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     Text(book.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),),
      //                     Column(
      //                       children: [
      //                         Text(book.rating),
      //                         Text(book.genre),
      //                       ],
      //                     )
      //                   ],
      //                 ),
      //                 AppSizes.gapH16,
      //                 Text(book.detail),
      //                 AppSizes.gapH16,
      //                 Row(
      //                   children: [
      //                     ElevatedButton(onPressed: (){}, child: Text('Read Book')),
      //                     OutlinedButton(onPressed: (){}, child: Text('Read Book')),
      //                   ],
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //
      //   ],
      // ),
    );
  }
}





// class DetailPage extends StatelessWidget {
//   final Book book;
//   const DetailPage({super.key, required this.book});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               CachedNetworkImage(imageUrl: book.image),
//             ],
//           ),
//           Positioned(
//             bottom: 0,
//             child: Container(
//               height: 500,
//               color: Colors.white,
//               child: SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(book.title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),),
//                           Column(
//                             children: [
//                               Text(book.rating),
//                               Text(book.genre),
//                             ],
//                           )
//                         ],
//                       ),
//                       AppSizes.gapH16,
//                       Text(book.detail),
//                       AppSizes.gapH16,
//                       Row(
//                         children: [
//                           ElevatedButton(onPressed: (){}, child: Text('Read Book')),
//                           OutlinedButton(onPressed: (){}, child: Text('Read Book')),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
