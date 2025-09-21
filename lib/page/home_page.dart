import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/counter_page.dart';
import 'package:flutter_application_1/page/todo_page.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final pages = [const CounterPage(), const TodoPage()];

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // 状态栏透明
        systemNavigationBarColor: Colors.transparent, // 底部导航栏透明
        systemNavigationBarIconBrightness: Brightness.dark, // 导航栏图标颜色
        statusBarIconBrightness: Brightness.dark, // 状态栏图标颜色
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "计数器"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "TODO"),
        ],
      ),
    );
  }
}
