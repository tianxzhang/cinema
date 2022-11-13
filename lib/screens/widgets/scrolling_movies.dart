import 'package:cinema/api/repository.dart';
import 'package:cinema/constants/api_constants.dart';
import 'package:cinema/screens/cubit/home_cubit.dart';
import 'package:cinema/screens/cubit/home_state.dart';
import 'package:cinema/screens/cubit/scrolling_movies_cubit.dart';
import 'package:cinema/screens/cubit/scrolling_movies_state.dart';
import 'package:cinema/screens/movie_detail.dart';
import 'package:cinema/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class ScrollingMovies extends StatelessWidget {
  final String title;

  final ThemeData themeData;

  ScrollingMovies({required this.title, required this.themeData});

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<ThemeState>(context);
    return BlocProvider(
      create: (BuildContext context) => ScrollingMoviesCubit(
          repository: context.read<Repository>(), title: title),
      child: BlocBuilder<ScrollingMoviesCubit, ScrollingMoviesState>(
          builder: (context, movieState) {
        if (movieState is ScrollingMoviesLoading ||
            context.read<HomeCubit>().state is HomeStateLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          movieState as ScrollingMoviesNormal;
          return Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(title, style: themeData.textTheme.headline5),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 200,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: movieState.movies.results!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => MovieDetailPage(
                                      movie: movieState.movies.results![index],
                                      themeData: themeData,
                                      genres: (context.read<HomeCubit>().state
                                              as HomeStateNormal)
                                          .genresResponse!
                                          .genres!,
                                      heroId:
                                          '${movieState.movies.results![index].id}$title')));
                        },
                        child: Hero(
                          tag: '${movieState.movies.results![index].id}$title',
                          child: SizedBox(
                            width: 100,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: FadeInImage(
                                      image: NetworkImage(
                                          '${TMDB_BASE_IMAGE_URL}w500/${movieState.movies.results![index].posterPath!}'),
                                      fit: BoxFit.cover,
                                      placeholder: const AssetImage(
                                          'assets/images/loading.gif'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    movieState.movies.results![index].title!,
                                    style: themeData.textTheme.bodyText1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        }
      }),
    );
  }
}
