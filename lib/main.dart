import 'package:flutter/material.dart';
import 'package:flutter_all_animation/animation/animation_home_screen.dart';
import 'package:flutter_all_animation/animation/animator_container_screen.dart';
import 'package:flutter_all_animation/animation/animator_opecity_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimationHomeScreen()
    );
  }
}


