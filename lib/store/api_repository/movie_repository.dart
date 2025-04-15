import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../models/movies_model.dart';
import '../api_overrides.dart';

class MovieRepository extends GetxController{
  static MovieRepository get instance => Get.find();
@override
  void onInit() {
    fetchMovies();
    super.onInit();
  }

  Future<List<Movies>> fetchMovies() async {
    HttpOverrides.global = MyHttpOverrides();

    final url = Uri.https(
      'movie-database-api1.p.rapidapi.com',
      '/list_movies.json',
      {
        'sort_by': 'date_added',
        'order_by': 'desc',
        
      },
    );

    final headers = {
      'x-rapidapi-key': 'd7daee57f3mshfb6c9e04c08ca77p113ab4jsn42121d2be4da',
      'x-rapidapi-host': 'movie-database-api1.p.rapidapi.com',
    };

    try {
      final response = await http.get(url, headers: headers);
      print('Response status: ${response.statusCode}');

      if (response.statusCode == 200) {
        final decodedJson = jsonDecode(response.body);
        final movieList = decodedJson['data']['movies'] as List<dynamic>?;

        if (movieList == null) return [];
print (movieList);
        return movieList.map((json) => Movies.fromJson(json)).toList();
      } else {
        throw Exception('Failed to fetch movies. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Error fetching movies');
    }
  }

}
