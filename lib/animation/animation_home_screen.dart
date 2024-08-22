import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_all_animation/animation/animator_container_screen.dart';
import 'package:flutter_all_animation/animation/animator_cross_fade.dart';
import 'package:flutter_all_animation/animation/animator_opecity_screen.dart';

class AnimationHomeScreen extends StatefulWidget {
  const AnimationHomeScreen({super.key});

  @override
  State<AnimationHomeScreen> createState() => _AnimationHomeScreenState();
}

class _AnimationHomeScreenState extends State<AnimationHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter All Animation"),
      ),
      body:  Center(
        child: Column(
          children: [

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (contect) => AnimatorContainerScreen()));
              },

              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Card(
                    child:Align(
                        alignment: Alignment.center,
                        child: Text("AnimatedContainer" , style: TextStyle(fontSize: 30),)) ,
                  ),
                ),
              ),
            ) ,

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AnimatorOpecityScreen()));
              },

              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Card(
                    child:Align(
                        alignment: Alignment.center,
                        child: Text("AnimatorOpacity" , style: TextStyle(fontSize: 30),)) ,
                  ),
                ),
              ),
            ) ,

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => AnimatorCrossFade())) ;
              },

              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Card(
                    child:Align(
                        alignment: Alignment.center,
                        child: Text("AnimatorCrossFade" , style: TextStyle(fontSize: 30),)) ,
                  ),
                ),
              ),
            ) ,


            InkWell(
              onTap: (){},

              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 80,
                  width: double.infinity,
                  child: Card(
                    child:Align(
                        alignment: Alignment.center,
                        child: Text("AnimatorContainer" , style: TextStyle(fontSize: 30),)) ,
                  ),
                ),
              ),
            ) ,


          ],
        ),
      ),
    );
  }
}
