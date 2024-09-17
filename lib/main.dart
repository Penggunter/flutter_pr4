import 'package:flutter/material.dart';
import './ui/page/home_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    String _title = 'Flutter pr4';

    return MaterialApp(
      title: _title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 230, 163, 48)),
        useMaterial3: true,
      ), 
      home: HomeScreen(title: 'Flutter pr4'),
    );
  }
}
