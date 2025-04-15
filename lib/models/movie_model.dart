// // To parse this JSON data, do
// //
// //     final moviemodel = moviemodelFromJson(jsonString);
//
// import 'dart:convert';
//
// import 'package:movie/models/movies_model.dart';
//
// MovieModel movieModelFromJson(String str) => MovieModel.fromJson(json.decode(str));
//
// String movieModelToJson(MovieModel data) => json.encode(data.toJson());
//
// class MovieModel {
//     int movieCount;
//     int limit;
//     int pageNumber;
//     List<Movies> movies;
//
//     MovieModel({
//         required this.movieCount,
//         required this.limit,
//         required this.pageNumber,
//         required this.movies,
//     });
//
//     factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
//         movieCount: json["movie_count"],
//         limit: json["limit"],
//         pageNumber: json["page_number"],
//         movies: List<Movies>.from(json["movies"].map((x) => x)),
//     );
//
//     Map<String, dynamic> toJson() => {
//         "movie_count": movieCount,
//         "limit": limit,
//         "page_number": pageNumber,
//         "movies": List<dynamic>.from(movies.map((x) => x)),
//     };
// }
