import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:edgy_button/edgy_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EdgyButton Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             EdgyButton(
                 buttonHeight: 50,
                 buttonWidth: 200,
                 label: 'BUTTON',
                 labelStyle: const TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 24,
                   color: Colors.white,
                 ),
                 buttonColor: Colors.redAccent,
                 onPressed: (){
                   log('Clicked');
                 },
             ),
             const SizedBox(height:20),
             EdgyButton(
               buttonHeight: 50,
               buttonWidth: 200,
               label: 'BUTTON',
               labelStyle: const TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 24,
                 color: Colors.green,
               ),
               border: Border.all(
                 color: Colors.green,
                 width: 2,
               ),
               buttonColor: Colors.transparent,
               onPressed: (){
                 log('Clicked Pro');
               },
             ),
           ],
         ),
       ),
    );
  }
}
