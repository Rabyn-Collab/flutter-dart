import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttermangsir/routes/app_routes.dart';




//provider, notifier provider, future provider, async_notifier provider,  stream provider


void greet({String? name}){
   print(name ?? 'show');
}

void main (){
 // greet();
  runApp(ProviderScope(child: Main()));
  // final somes = [11,22,33,44,55];
  // print([
  //   for(final n in somes) n +2
  // ]);
}



class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
