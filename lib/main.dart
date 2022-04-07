import 'package:flutter/material.dart';
import 'package:event_manager_app/globals/colours.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: const MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
    );
  }
}

