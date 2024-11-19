import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget { 
  const MyHomePage({super.key, required this.title});
  final String title;

  _mySnackBar(String msg){ // 1
    return SnackBar(
      content: Text('【スナックバー】$msg'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final button = ElevatedButton( 
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          _mySnackBar("メッセージ") // 2
        );
      },
      child: const Text("ボタン"),
    );
    return Scaffold( body: button);
  }
}