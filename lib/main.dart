import 'package:flutter/material.dart';
import 'package:practical_exam_one/Homepage.dart';
import 'package:practical_exam_one/ModalClass.dart';
import 'package:practical_exam_one/MovieProvider.dart';
import 'package:practical_exam_one/SplashScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => Movieprovider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
