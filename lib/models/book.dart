


class Book {


 final String title;
  final String detail;
  final String  image;
  final String rating;
  final String genre;


  Book({
    required this.title,
    required this.detail,
    required this.genre,
    required this.image,
    required this.rating
  });



  factory Book.fromJson(Map<String, dynamic> json){

     return Book(
         title: json['title'] ?? 'title',
         detail: json['detail'],
         genre: json['genre'],
         image: json['image'],
         rating: json['rating']
     );
  }



  // @override
  // String toString() {
  //   return 'Book('
  //  'title: ${this.title}'
  //  'detail: ${this.detail}'
  //   ')';
  // }



}

