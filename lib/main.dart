import 'package:flutter/material.dart';
import 'package:clone_instagram/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clone Instagram',
      routes: {
        HomePage.routeName: (context) => const HomePage(),
      }, //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}