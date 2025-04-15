// To parse this JSON data, do
//
//     final movies = moviesFromJson(jsonString);

import 'dart:convert';

import 'package:movie/models/torrents_model.dart';

Movies moviesFromJson(String str) => Movies.fromJson(json.decode(str));

String moviesToJson(Movies data) => json.encode(data.toJson());

class Movies {
    int id;
    String url;
    String imdbCode;
    String title;
    String titleEnglish;
    String titleLong;
    String slug;
    int year;
    int rating;
    int runtime;
    List<String> genres;
    String summary;
    String descriptionFull;
    String synopsis;
    String ytTrailerCode;
    String language;
    String mpaRating;
    String backgroundImage;
    String backgroundImageOriginal;
    String smallCoverImage;
    String mediumCoverImage;
    String largeCoverImage;
    String state;
    List<Torrent> torrents;

    Movies({
        required this.id,
        required this.url,
        required this.imdbCode,
        required this.title,
        required this.titleEnglish,
        required this.titleLong,
        required this.slug,
        required this.year,
        required this.rating,
        required this.runtime,
        required this.genres,
        required this.summary,
        required this.descriptionFull,
        required this.synopsis,
        required this.ytTrailerCode,
        required this.language,
        required this.mpaRating,
        required this.backgroundImage,
        required this.backgroundImageOriginal,
        required this.smallCoverImage,
        required this.mediumCoverImage,
        required this.largeCoverImage,
        required this.state,
        required this.torrents,
    });

    factory Movies.fromJson(Map<String, dynamic> json) => Movies(
        id: json["id"] ?? 0,
        url: json["url"] ?? '',
        imdbCode: json["imdb_code"] ?? '',
        title: json["title"] ?? '',
        titleEnglish: json["title_english"] ?? '',
        titleLong: json["title_long"] ?? '',
        slug: json["slug"] ?? '',
        year: _parseInt(json["year"]),
        rating: _parseInt(json["rating"]),
        runtime: _parseInt(json["runtime"]),
        genres: List<String>.from(json["genres"] ?? []),
        summary: json["summary"] ?? '',
        descriptionFull: json["description_full"] ?? '',
        synopsis: json["synopsis"] ?? '',
        ytTrailerCode: json["yt_trailer_code"] ?? '',
        language: json["language"] ?? '',
        mpaRating: json["mpa_rating"] ?? '',
        backgroundImage: json["background_image"] ?? '',
        backgroundImageOriginal: json["background_image_original"] ?? '',
        smallCoverImage: json["small_cover_image"] ?? '',
        mediumCoverImage: json["medium_cover_image"] ?? '',
        largeCoverImage: json["large_cover_image"] ?? '',
        state: json["state"] ?? '',
        torrents: json["torrents"] == null
            ? []
            : List<Torrent>.from(json["torrents"].map((x) => Torrent.fromJson(x))),
    );


    Map<String, dynamic> toJson() => {
        "id": id,
        "url": url,
        "imdb_code": imdbCode,
        "title": title,
        "title_english": titleEnglish,
        "title_long": titleLong,
        "slug": slug,
        "year": year,
        "rating": rating,
        "runtime": runtime,
        "genres": List<dynamic>.from(genres.map((x) => x)),
        "summary": summary,
        "description_full": descriptionFull,
        "synopsis": synopsis,
        "yt_trailer_code": ytTrailerCode,
        "language": language,
        "mpa_rating": mpaRating,
        "background_image": backgroundImage,
        "background_image_original": backgroundImageOriginal,
        "small_cover_image": smallCoverImage,
        "medium_cover_image": mediumCoverImage,
        "large_cover_image": largeCoverImage,
        "state": state,
        "torrents": List<dynamic>.from(torrents.map((x) => x.toJson())),
    };
}

int _parseInt(dynamic value) {
    if (value is int) return value;
    if (value is String) return int.tryParse(value) ?? 0;
    return 0;
}

