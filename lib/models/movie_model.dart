// To parse this JSON data, do
//
//     final moviemodel = moviemodelFromJson(jsonString);

import 'dart:convert';

import 'package:movie/models/movies_model.dart';

Moviemodel moviemodelFromJson(String str) => Moviemodel.fromJson(json.decode(str));

String moviemodelToJson(Moviemodel data) => json.encode(data.toJson());

class Moviemodel {
    int movieCount;
    int limit;
    int pageNumber;
    List<Movies> movies;

    Moviemodel({
        required this.movieCount,
        required this.limit,
        required this.pageNumber,
        required this.movies,
    });

    factory Moviemodel.fromJson(Map<String, dynamic> json) => Moviemodel(
        movieCount: json["movie_count"],
        limit: json["limit"],
        pageNumber: json["page_number"],
        movies: List<Movies>.from(json["movies"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "movie_count": movieCount,
        "limit": limit,
        "page_number": pageNumber,
        "movies": List<dynamic>.from(movies.map((x) => x)),
    };
}
