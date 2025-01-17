import 'package:flutter/material.dart';


// caraousel View

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carousel View'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: CarouselView(
              itemSnapping: true,
                itemExtent: 200,
                children: List.generate(10, (index){
                  return  Image.network('https://picsum.photos/400?$index',fit: BoxFit.cover,);
                })
            ),
          )
        ],
      ),
    );
  }
}
