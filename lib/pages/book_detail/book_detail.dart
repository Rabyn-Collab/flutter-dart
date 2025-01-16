import 'package:flutter/material.dart';
import 'package:fluttermangsir/constants/app_sizes.dart';
import 'package:fluttermangsir/models/book.dart';
import 'package:fluttermangsir/pages/book_detail/widgets/book_section.dart';
import 'package:fluttermangsir/pages/book_detail/widgets/desc_widget.dart';
import 'package:fluttermangsir/pages/book_detail/widgets/head_widget.dart';



class BookDetail extends StatelessWidget {
  final Book book;
  const BookDetail({super.key, required this.book});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.bookmark))
        ],
      ),
        body: Stack(
          children: [
            ListView(
              children: [
                HeadWidget(book: book,),
                gapH16,
                BookSection(pages: book.pages,),
                gapH16,
                DescWidget()
              ],
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    //minimumSize: Size(400, 170),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                    onPressed: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Get It Now'),
                        Icon(Icons.download, color: Colors.white,),
                      ],
                    )
                ),
              ),
            )
          ],
        )
    );
  }
}
