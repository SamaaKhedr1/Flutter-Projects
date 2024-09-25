import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Services/news_services.dart';
import 'package:news_app/Views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
