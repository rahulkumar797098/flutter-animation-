import 'dart:async'; // Import the Timer class
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatorOpecityScreen extends StatefulWidget {
  const AnimatorOpecityScreen({super.key});

  @override
  State<AnimatorOpecityScreen> createState() => _AnimatorOpecityScreenState();
}

class _AnimatorOpecityScreenState extends State<AnimatorOpecityScreen> {
  double bOpacity = 0.2;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        bOpacity = bOpacity == 0.2 ? 1.0 : 0.2;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: bOpacity,
              duration: Duration(milliseconds: 1000),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
