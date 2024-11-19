import 'package:flutter/material.dart';
void main() {
  const body = Center( child: Text("テキスト"),);

  final fab = Column( // 1
    mainAxisAlignment: MainAxisAlignment.end, // 2
    children: [
      FloatingActionButton( 
        onPressed: () { print("ボタンが押されました"); }, 
        child: const Icon(Icons.add)
      ),
      const SizedBox( height: 10, ), // 3
      FloatingActionButton( 
        onPressed: () { print("ボタンが押されました"); }, 
        backgroundColor: Colors.amber,
        child: const Icon(Icons.edit),
      ),
    ],
  );

  final sc = Scaffold(
    body: body, // ボディー
    floatingActionButton: fab, // フローティングアクションボタン
  );

  final app = MaterialApp(home: sc);
  runApp(app);
}