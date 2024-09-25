import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(        
        body: Container(
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
            child: Text('Hello world!', style: TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),), 
          ),
        ),
      ),
    ),
  );
}
