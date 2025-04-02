import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm/data/book_data.dart';
import 'package:mvvm/routes/route_enums.dart';


class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 300,

      //carousel widget
      child: CarouselView(
        itemSnapping: true,
          elevation: 5,
          enableSplash: true,
          shape: RoundedRectangleBorder(),
          itemExtent: 150,
          onTap: (a){
            context.pushNamed(AppRoute.detail.name, extra: books[a]);
          },
          //itemSnapping: true,
          children: books.map((e){
            //column widget
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                //image widget
               CachedNetworkImage(
                 errorWidget: (c,s,o) {
                   return Center(child: Icon(Icons.info));
                 },
                // placeholder: (c,s) => Center(child: CircularProgressIndicator()),
                   imageUrl: e.image
               ),
            
                // text widget
                Text(e.title)
              ],
            );
          }).toList()
      ),
    );
  }
}
