import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinema/api/repository.dart';
import 'package:cinema/constants/api_constants.dart';
import 'package:cinema/screens/cubit/discover_movies_cubit.dart';
import 'package:cinema/screens/cubit/discover_movies_state.dart';
import 'package:cinema/screens/cubit/home_cubit.dart';
import 'package:cinema/screens/cubit/home_state.dart';
import 'package:cinema/screens/movie_detail.dart';
import 'package:cinema/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class DiscoverMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<ThemeState>(context);
    return BlocProvider(
      create: (BuildContext context) =>
          DiscoverMoviesCubit(repository: context.read<Repository>()),
      child: BlocBuilder<DiscoverMoviesCubit, DiscoverMoviesState>(
          builder: (context, movieState) {
        if (movieState is DiscoverMoviesLoading ||
            context.read<HomeCubit>().state is HomeStateLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          movieState as DiscoverMoviesNormal;
          return Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Discover',
                        style: themeState.themeData.textTheme.headline5),
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
                                  builder: (_) => MovieDetailPage(
                                      movie: movieState.movies.results![index],
                                      themeData: themeState.themeData,
                                      genres: (context.read<HomeCubit>().state
                                              as HomeStateNormal)
                                          .genresResponse!
                                          .genres!,
                                      heroId:
                                          '${movieState.movies.results![index].id}discover')));
                        },
                        child: Hero(
                          tag:
                              '${movieState.movies.results![index].id}discover',
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: FadeInImage(
                              image: NetworkImage(TMDB_BASE_IMAGE_URL +
                                  'w500/' +
                                  movieState
                                      .movies.results![index].posterPath!),
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
