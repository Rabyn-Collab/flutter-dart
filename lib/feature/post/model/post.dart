



class Post{
  final String title;
  final String description;
  final String imageUrl;
  final String id;
  final String userId;
  Post({required this.title,required this.description,required this.imageUrl, required this.id, required this.userId});


  // factory Post.fromJson(Map<String, dynamic> json) =>
  //     Post(title: json['title'], description: json['description'], imageUrl: json['imageUrl'], id: json['id']);
}