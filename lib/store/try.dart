import 'dart:io';
import 'package:http/http.dart' as http;

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = 
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> fetchMovies() async {
  HttpOverrides.global = MyHttpOverrides(); // Add this line
  
  final url = Uri.https(
    'movie-database-api1.p.rapidapi.com',
    '/list_movies.json',
    {/* your params */},
  );

  final headers = {
    'x-rapidapi-key': 'd7daee57f3mshfb6c9e04c08ca77p113ab4jsn42121d2be4da',
    'x-rapidapi-host': 'movie-database-api1.p.rapidapi.com',
  };

  try {
    final response = await http.get(url, headers: headers);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  } catch (e) {
    print('Error: $e');
  }
}

void main() async {
  await fetchMovies();
}