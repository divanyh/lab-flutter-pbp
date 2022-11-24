// To parse this JSON data, do
//
//     final movie = movieFromJson(jsonString);

import 'dart:convert';

List<Movie> movieFromJson(String str) =>
    List<Movie>.from(json.decode(str).map((x) => Movie.fromJson(x)));

String movieToJson(List<Movie> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Movie {
  Movie({
    required this.model,
    required this.pk,
    required this.fields,
  });

  String model;
  int pk;
  Fields fields;

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  Fields({
    required this.watchStatus,
    required this.filmTitle,
    required this.filmRating,
    required this.filmRelease,
    required this.filmReview,
  });

  String watchStatus;
  String filmTitle;
  int filmRating;
  String filmRelease;
  String filmReview;

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        watchStatus: json["watch_status"],
        filmTitle: json["film_title"],
        filmRating: json["film_rating"],
        filmRelease: json["film_release"],
        filmReview: json["film_review"],
      );

  Map<String, dynamic> toJson() => {
        "watch_status": watchStatus,
        "film_title": filmTitle,
        "film_rating": filmRating,
        "film_release": filmRelease,
        "film_review": filmReview,
      };
}
