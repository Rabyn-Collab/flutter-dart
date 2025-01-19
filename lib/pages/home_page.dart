import 'package:flutter/material.dart';

//home page
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int count = 0;

  @override
  Widget build(BuildContext context) {

   print('build');
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$count ${count %2 ==0 ? 'Even': 'Odd'}', style: TextStyle(fontSize: 50),),
          const Text('hello this is home page'),
          ElevatedButton(
              onPressed: (){
                setState(() {
                  count++;
                  print(count);
                });
              },
              child: const Text('make increment')),
          ElevatedButton(
              onPressed: count == 0 ? null : (){
                if(count == 0) return;
                print('hello');

                setState(() {
                  count--;
                  print(count);
                });

                // context.pushNamed(AppRoute.about.name);
              },
              child: const Text('make increment'))
        ],
      )),
    );
  }
}

