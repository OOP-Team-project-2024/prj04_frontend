import 'package:flutter/material.dart';
import './screens/fortune_screen.dart';
import './screens/login_screen.dart';
import './screens/menu_screen.dart';
import './screens/place_screen.dart';
import './screens/rank_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '푸앙점점',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Route 설정
      routes: {
        '/': (context) => const LoginScreen(),
        '/fortune': (context) => FortuneScreen(),
        '/menu': (context) => MenuScreen(),
        '/place': (context) => PlaceScreen(),
        '/rank': (context) => RankScreen(),
      },
      initialRoute: '/fortune', // 시작 페이지
    );
  }
}