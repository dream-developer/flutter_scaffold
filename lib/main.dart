import 'package:flutter/material.dart';
void main() {  
  final popupMenu = PopupMenuButton( // 1
    icon: const Icon(Icons.more_vert), // 2
    itemBuilder: (BuildContext context) => <PopupMenuEntry>[ // 3
      const PopupMenuItem( // 4
        value: 'search', // 5
        child: ListTile( // 6
          leading: Icon(Icons.search),
          title : Text('検索する')
        )
      ),
    ],
    onSelected: (value){ // 7
      switch(value){ // 8
        case 'search': print("検索");
      }
    }  
  );

  final appBar = AppBar(
    title: const Text('アプリのタイトル'),
    actions: [ popupMenu, ], // 9
  );
  
  final sc = Scaffold(
    appBar: appBar, body:
    const Text("テキスト"), );
  
  final app = MaterialApp(
    debugShowCheckedModeBanner: false, // 10
    home: sc
  );
  runApp(app);
}