import 'package:flutter/material.dart';
void main() {  
  final dc = DrawerHeader(child: Text('ドロワーのヘッダー')); // 1
  final drawer = Drawer( // 2
    child: dc, // 3
  );
  final appBar = AppBar( // 4
    title: const Text('アプリのタイトル'),
    // leading: IconButton( // 5
    //   icon: const Icon(Icons.info), onPressed: () {},
    // ),
  );
  final sc = Scaffold(
    appBar: appBar, // 6
    drawer: drawer, // 7
    body: const Text("テキスト"), // ボディー
  );

  final app = MaterialApp(
    debugShowCheckedModeBanner: false,
    home: sc
  );
  runApp(app);
}