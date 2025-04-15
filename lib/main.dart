import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie/pages/home.dart';
import 'package:movie/store/api_repository/movie_repository.dart';

void main() {

  Get.put(MovieRepository());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)
      ),
      home: HomePage(),

    );
  }
}
