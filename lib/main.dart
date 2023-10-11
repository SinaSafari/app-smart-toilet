import 'package:flutter/material.dart';
import 'package:smart_toilet/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> main() async {
  await Firebase.initializeApp();
  final fcmToken = await FirebaseMessaging.instance.getToken();
  await FirebaseMessaging.instance.setAutoInitEnabled(true);
  print("FCMToken $fcmToken");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: SmartToiletAppRouter.router,
      debugShowCheckedModeBanner: false,
      title: "smart toilet",
      theme: ThemeData(fontFamily: 'Vazir'),
    );
  }
}
