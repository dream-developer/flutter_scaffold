import 'package:flutter/material.dart';
void main() {
  final appBar = AppBar( 
    title: const Text('アプリのタイトル'),  
    leading: IconButton( // ハンバーガーメニュー
      icon: const Icon(Icons.menu), onPressed: () {},
    ),
    actions: [ 
      IconButton( // ３点ドットメニュー
        icon: const Icon(Icons.more_vert), onPressed: () {},
      ),
    ],
  );
  final sc = Scaffold(
    appBar: appBar, 
    body: const Text("テキスト"),
  );
  final app = MaterialApp(
    debugShowCheckedModeBanner: false, 
    home: sc
  );
  runApp(app);
}