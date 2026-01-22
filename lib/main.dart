import 'package:flutter/material.dart';

void main() {
  runApp(const MashenaApp());
}

class MashenaApp extends StatelessWidget {
  const MashenaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const Test());
  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("welcome")));
  }
}
