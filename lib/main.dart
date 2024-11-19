import 'package:flutter/material.dart';
void main() {
  final appBar = AppBar( // 1
    backgroundColor: Colors.orange[50], // 2
    title: const Text('アプリのタイトル'), // 3          
    centerTitle: true, // 4
    titleTextStyle: const TextStyle( // 5
      fontStyle: FontStyle.italic,
      fontSize: 20, 
      color: Colors.green,
    ),
    leading: IconButton( // 6
      icon: const Icon(Icons.info), onPressed: () {},
    ),
    actions: [ // 7
      IconButton( icon: const Icon(Icons.share), onPressed: () {},),
      IconButton( icon: const Icon(Icons.notifications), onPressed: () {},),
    ],
  );
  final sc = Scaffold(
    appBar: appBar, // 8
    body: const Text("テキスト"),
  );
  final app = MaterialApp(
    debugShowCheckedModeBanner: false, // 9
    home: sc
  );
  runApp(app);
}