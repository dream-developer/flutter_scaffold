import 'package:flutter/material.dart';
void main() {  
  final dc = ListView( // 1
    children: [
      DrawerHeader( // 2
        padding: const EdgeInsets.all(0), // 3
        child: Container( // 4
          color: Colors.green[50],
          alignment: Alignment.center,
          child: const Text('ドロワーのヘッダー'),
        ),
      ),
      ListTile( // 5
        title: const Text('アイテム１'),
        onTap: () { print('アイテム１'); },
      ),
      ListTile(
        title: const Text('アイテム２'),
        onTap: () { print('アイテム２'); },
      ),
      const Divider(), // 6
      ListTile(
        title: const Text('アイテム３'),
        onTap: () { print('アイテム３'); },
      ),
    ],
  );
  
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