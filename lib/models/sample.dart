







class Comments{

  final List<Comment> comments;
  final int total;
  final int skip;
  final int limit;

  Comments({
    required this.comments,
    required this.limit,
    required this.skip, required this.total});

}


class Comment{
  final int id;
  final String body;
  final int postId;
  final int likes;
  final User user;
  Comment({
    required this.user,
    required this.id,
    required this.body,
    required this.likes,
    required this.postId
});

}

class User{
  final int id;
  final String username;
  final String fullName;
  User({required this.id, required this.username, required this.fullName});

}


final user = {
  "id": 1,
  "firstName": "Emily",
  "lastName": "Johnson",
  "hair": {
    "color": "Brown",
    "type": "Curly"
  },
  "ip": "42.48.100.32",
  "address": {
    "address": "626 Main Street",
    "city": "Phoenix",
    "state": "Mississippi",
    "stateCode": "MS",
    "postalCode": "29112",
    "coordinates": {
      "lat": -77.16213,
      "lng": -92.084824
    },
    "country": "United States"
  }
};