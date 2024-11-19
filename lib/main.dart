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
      debugShowCheckedModeBanner: false, // デバッグラベルを消す
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget { 
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState(); 
}

class _MyHomePageState extends State<MyHomePage> { 
  int _selectedIndex = 0; // 1

  final _items = [ // 2
    const BottomNavigationBarItem( // index:0
      icon: Icon(Icons.home),
      label: 'ホーム',
      tooltip: '「ホーム」画面を表示します',
    ),
    const BottomNavigationBarItem( // index:1
      icon: Icon(Icons.help),
      label: '使い方',
      tooltip: '「使い方」画面を表示します',
    ),
    const BottomNavigationBarItem( // index:2
      icon: Icon(Icons.settings),
      label: '設定',
      tooltip: '「設定」画面を表示します',
    ),
  ];

  final _screens = [ // 3
    const Text('ホーム'),
    const Text('使い方'),
    const Text('設定'),
  ];

  @override
  Widget build(BuildContext context) {
    final bnBar =  BottomNavigationBar( // 4
      items: _items, // 5
      backgroundColor: Colors.grey[800], // 6
      selectedItemColor: Colors.white, // 7
      unselectedItemColor: Colors.grey, // 8
      currentIndex: _selectedIndex, // 9
      onTap: (index) { // 10
        setState(() {
          _selectedIndex = index;
        });
      }
    );

    final body = Center(child: _screens[_selectedIndex]); // 11

    return Scaffold(
      body: body, // ボディー
      bottomNavigationBar: bnBar, // ボトムナビゲーションバー
    );
  }
}