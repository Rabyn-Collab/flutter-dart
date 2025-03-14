import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm/routes/app_routes.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import 'firebase_options.dart';






void main () async{


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  OneSignal.initialize("8d40620a-e8e0-491a-b772-5bc5cad16deb");
  OneSignal.Notifications.requestPermission(true);

  runApp(ProviderScope(child:const Main()));
}

//
class Main extends ConsumerWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context, ref) {
  final goRouter = ref.watch(goRouterProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: goRouter,

    );
  }
}


