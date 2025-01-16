import 'package:flutter/material.dart';
import 'package:fluttermangsir/constants/app_sizes.dart';
import 'package:fluttermangsir/models/book.dart';


class HeadWidget extends StatelessWidget {
  final Book book;
  const HeadWidget({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 60),
          height: 90,
          color: Colors.green.shade50,
        ),
        Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                elevation: 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(book.imageUrl,
                  height: 250,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              gapH20,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(

                  children: [
                    Text(book.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    gapH4,
                    Text(book.author,style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
              ),

            ],
          ),
        ),


      ],
    );
  }
}
