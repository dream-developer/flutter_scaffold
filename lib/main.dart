import 'package:flutter/material.dart';
void main() {
  const body = Center( child: Text("テキスト"),);

  final fab = FloatingActionButton( // 1
    onPressed: () { print("ボタンが押されました"); }, // 2 
    tooltip: 'ツールチップ', // 3
    child: const Icon(Icons.add), // 4
  );

  final sc = Scaffold(
    body: body, // ボディー
    floatingActionButton: fab, // フローティングアクションボタン
  );

  final app = MaterialApp(home: sc);
  runApp(app);
}