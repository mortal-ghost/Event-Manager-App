import 'package:event_manager_app/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:event_manager_app/globals/colours.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.cyan,
        ).copyWith(
          secondary: Colors.cyanAccent
        )
      ),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Event Manager'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(25.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50.0))
                  ),
                  child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0
                      ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}

