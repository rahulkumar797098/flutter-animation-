import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatorCrossFade extends StatefulWidget {
  const AnimatorCrossFade({super.key});

  @override
  State<AnimatorCrossFade> createState() => _AnimatorCrossFadeState();
}

class _AnimatorCrossFadeState extends State<AnimatorCrossFade> {
  bool showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  showFirst = !showFirst; // Toggle the state
                });
              },
              child: AnimatedCrossFade(
                firstChild: Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                ),
                secondChild: Container(
                  height: 400,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                  ),
                ),
                crossFadeState: showFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 1500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
