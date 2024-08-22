import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatorContainerScreen extends StatefulWidget {
  const AnimatorContainerScreen({super.key});

  @override
  State<AnimatorContainerScreen> createState() => _AnimatorContainerScreenState();
}

class _AnimatorContainerScreenState extends State<AnimatorContainerScreen> {

  double bWith = 100 ;
  double bHeight = 100 ;
  double bRadius = 2 ;
  Color bColor = Colors.orangeAccent ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animator Containor"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            InkWell(
              onTap: (){
              bHeight = bHeight == 100 ? 200 : 100 ;
              bWith =  bWith == 100 ? 300 : 100 ;
              bRadius = bRadius == 2 ? 20 : 2 ;
              bColor = bColor == Colors.orangeAccent ? Colors.greenAccent :  Colors.orangeAccent;
                setState(() {

                });

              },
              child: AnimatedContainer(
                height: bHeight,
                width: bWith,
                decoration:BoxDecoration(
                  color: bColor ,
                    borderRadius: BorderRadius.circular(bRadius)
                ), duration: const Duration(seconds: 1),
              ),
            )




          ],
        ),
      ),
    );
  }
}
