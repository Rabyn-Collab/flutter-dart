import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttermangsir/app_data/book_data.dart';
import 'package:fluttermangsir/pages/detail_page.dart';
import 'package:get/get.dart';


class BookSlider extends StatelessWidget {
  const BookSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 200,
      child: ListView.separated(
        // physics: BouncingScrollPhysics(),
          separatorBuilder: (context, index) {
            return SizedBox(width: 10,);
          },
          scrollDirection: Axis.horizontal,
          itemCount: bookItems.length,
          itemBuilder: (context, index){
            final book = bookItems[index];

            return  InkWell(
              onTap: (){
                Get.to(() => BookDetail(book: book,), transition: Transition.leftToRight);
              },
              child: Container(
                padding: EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color: Color(0xFF71877A),
                    borderRadius: BorderRadius.circular(17)
                ),
                height: 200,
                width: 140,
                child: Card(
                  elevation: 10,
                  child: CachedNetworkImage(
                    imageUrl: book.imageUrl,
                    fit: BoxFit.cover,
                    errorWidget: (c, s,o){
                      return Image.asset('assets/icons/3069185_book_education_learn_school_icon.png');
                    },
                  ),
                ),

              ),
            );
          }
      ),
    );
  }
}
