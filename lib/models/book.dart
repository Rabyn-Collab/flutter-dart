



class Book{

  final String title;
  final String imageUrl;
  final String rating;
  final String author;
  final int pages;
  final bool isBookMarked;

  Book({
    required this.imageUrl,
    required this.author,
    required this.pages,
    required this.rating,
    required this.title,
    required this.isBookMarked
  });


  factory Book.fromJson(Map<String, dynamic> json){
    return Book(
        imageUrl: json['imageUrl'],
        author: json['author'],
        pages: json['pages'],
        rating: json['rating'],
        title: json['title'],
       isBookMarked: json['isBookMarked']
    );
  }



}


