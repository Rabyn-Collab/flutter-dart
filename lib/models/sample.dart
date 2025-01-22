class Sample{
  String title;
  String image;
  String subtitle;

  Sample({
    required this.title,
    required this.image,
    required this.subtitle
  });
  factory Sample.fromJson(Map<String, dynamic> json){
    return Sample(
        title: json['title'] ,
        image: json['image'],
        subtitle: json['subtitle']);
  }
}

final g = {
  'title': 'sdjkslkjs'
};

List<Sample> samples = List.generate(25, (index){
  return Sample(
      title: 'hello $index',
      image: 'https://plus.unsplash.com/premium_photo-1737024251796-dd751b4d9365?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxfHx8ZW58MHx8fHx8',
      subtitle: 'subtitle jee $index'
  );
});