import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinema/api/repository.dart';
import 'package:cinema/constants/api_constants.dart';
import 'package:cinema/modal_class/genre.dart';
import 'package:cinema/screens/cubit/particular_genre_cubit.dart';
import 'package:cinema/screens/cubit/particular_genre_state.dart';
import 'package:cinema/screens/movie_detail.dart';
import 'package:cinema/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class ParticularGenreMovies1 extends StatelessWidget {
  final Genre genre;
  final List<Genre> genres;

  ParticularGenreMovies1(this.genre, this.genres);

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ThemeState>(context);
    return BlocProvider(
      create: (BuildContext context) =>
          ParticularGenreCubit(repository: context.read<Repository>(), id: '${genre.id!}'),
      child: BlocBuilder<ParticularGenreCubit, ParticularGenreState>(
          builder: (context, movieState) {
            if (movieState is ParticularGenreLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              movieState as ParticularGenreNormal;
              return Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Discover',
                            style: state.themeData.textTheme.headline5),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 350,
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                        disableCenter: true,
                        viewportFraction: 0.8,
                        enlargeCenterPage: true,
                      ),
                      itemBuilder:
                          (BuildContext context, int index, pageViewIndex) {
                        return Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MovieDetailPage(
                                          movie: movieState.movies.results![index],
                                          themeData: state.themeData,
                                          genres: genres,
                                          heroId:
                                          '${movieState.movies.results![index].id}discover')));
                            },
                            child: Hero(
                              tag: '${movieState.movies.results![index].id}discover',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: FadeInImage(
                                  image: NetworkImage(TMDB_BASE_IMAGE_URL +
                                      'w500/' +
                                      movieState.movies.results![index].posterPath!),
                                  fit: BoxFit.cover,
                                  placeholder:
                                  AssetImage('assets/images/loading.gif'),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: movieState.movies.results!.length,
                    ),
                  ),
                ],
              );
            }
          }),
    );
  }
}