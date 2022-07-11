// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_book_list/screens/list_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book List APP',
      home: ListScreen(),
    );
  }
}
