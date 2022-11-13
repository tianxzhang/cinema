import 'package:cinema/modal_class/genre.dart';
import 'package:cinema/screens/widgets/particular_genre_movies.dart';
import 'package:flutter/material.dart';

class GenreMovies extends StatelessWidget {
  final ThemeData themeData;
  final Genre genre;
  final List<Genre> genres;

  GenreMovies(
      {required this.themeData, required this.genre, required this.genres});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeData.primaryColor,
        title: Text(
          genre.name!,
          style: themeData.textTheme.headline5,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: themeData.accentColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ParticularGenreMovies1(
        genre,
        genres,
      ),
    );
  }
}
