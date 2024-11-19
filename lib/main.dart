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
  @override
  Widget build(BuildContext context) {
    final snackbar = SnackBar( // 1
      content: const Text('スナックバー'), // 2
      duration: const Duration(milliseconds: 10000), // 3
      showCloseIcon: true, // 4
      onVisible: () { print('スナックバーが表示されました'); }, // 5
      action: SnackBarAction( // 6
        label: 'アクションボタン',
        onPressed: () { print('アクションボタンが押されました'); }, // 7
      ),
    );
    final button = ElevatedButton( 
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar( snackbar, ); // 8
      },
      child: const Text("ボタン"),
    );
    return Scaffold( body: button);
  }
}