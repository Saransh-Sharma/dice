import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget { 

const GradientContainer({super.key});

@override
Widget build(context) {

return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 75, 8, 232),
                Color.fromARGB(255, 139, 199, 241),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
          ),
          ),
          child: const Center(
            child: Text('Hello dude !!', style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),), 
          ),
        );
  }
}