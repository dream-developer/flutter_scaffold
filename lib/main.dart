import 'package:flutter/material.dart';
void main() {
  final appBar = AppBar( // 1
    title: const Text('アプリのタイトル'), // 2 
  );
  final sc = Scaffold(
    appBar: appBar,   // 3
    body: const Text("テキスト"),
  );
  final app = MaterialApp(
    debugShowCheckedModeBanner: false, // 4 
    home: sc
  );
  runApp(app);
}