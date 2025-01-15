import 'package:fluttermangsir/models/book.dart';

const books = [
  {
    'title': 'To Kill a Mockingbird',
    'imageUrl': 'https://images.unsplash.com/photo-1604866830893-c13cafa515d5?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Ym9va3N8ZW58MHx8MHx8fDA%3D',
    'author': 'Harper Lee',
    'rating': '⭐⭐⭐⭐⭐',
    'pages': 281,
    'isBookMarked': true

  },
  {
    'title': '1984',
    'imageUrl': 'https://images.unsplash.com/photo-1521056787327-165dc2a32836?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGJvb2tzfGVufDB8fDB8fHww',
    'author': 'George Orwell',
    'rating': '⭐⭐⭐⭐',
    'pages': 328,
    'isBookMarked': false
  },
  {
    'title': 'The Great Gatsby',
    'imageUrl': 'https://images.unsplash.com/photo-1523865236457-3ae3358a4eaa?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGJvb2tzfGVufDB8fDB8fHww',
    'author': 'F. Scott Fitzgerald',
    'rating': '⭐⭐⭐',
    'pages': 180,
    'isBookMarked': true
  },
  {
    'title': 'The Catcher in the Rye',
    'imageUrl': 'https://images.unsplash.com/photo-1544822688-c5f41d2c1972?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGJvb2tzfGVufDB8fDB8fHww',
    'author': 'J.D. Salinger',
    'rating': '⭐⭐⭐⭐⭐',
    'pages': 277,
    'isBookMarked': false
  }
];

List<Book> bookItems = books.map((book){
  return Book.fromJson(book);
}).toList();


