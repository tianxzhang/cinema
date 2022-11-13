import 'package:cinema/api/repository.dart';
import 'package:cinema/constants/api_constants.dart';
import 'package:cinema/modal_class/genre.dart';
import 'package:cinema/modal_class/movie_entity.dart';
import 'package:cinema/screens/cubit/search_movie_cubit.dart';
import 'package:cinema/screens/cubit/search_movie_state.dart';
import 'package:cinema/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class SearchMovie extends StatelessWidget {
  final String? query;
  final List<Genre>? genres;
  final Function(MovieEntity)? onTap;

  SearchMovie(this.query, this.genres, this.onTap);

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ThemeState>(context);
    return BlocProvider(
      create: (BuildContext context) => SearchMoviesCubit(
          repository: context.read<Repository>(), query: query!),
      child: BlocBuilder<SearchMoviesCubit, SearchMoviesState>(
          builder: (context, searchState) {
      if (searchState is SearchMoviesLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      } else {
        searchState as SearchMoviesNormal;

        return Container(
          color: state.themeData.primaryColor,
          child: (searchState.movies.results?.isEmpty??true)
                  ? Center(
                      child: Text(
                        "Oops! couldn't find the movie",
                        style: state.themeData.textTheme.bodyText1,
                      ),
                    )
                  : ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: searchState.movies.results!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              onTap!(searchState.movies.results![index]);
                            },
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 70,
                                      height: 80,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: searchState.movies.results![index].posterPath ==
                                                null
                                            ? Image.asset(
                                                'assets/images/na.jpg',
                                                fit: BoxFit.cover,
                                              )
                                            : FadeInImage(
                                                image: NetworkImage(
                                                    TMDB_BASE_IMAGE_URL +
                                                        'w500/' +
                                                        searchState.movies.results![index]
                                                            .posterPath!),
                                                fit: BoxFit.cover,
                                                placeholder: AssetImage(
                                                    'assets/images/loading.gif'),
                                              ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              searchState.movies.results![index].title!,
                                              style: state.themeData.textTheme
                                                  .bodyText2,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Text(
                                                  '${searchState.movies.results![index]
                                                      .voteAverage!}',
                                                  style: state.themeData
                                                      .textTheme.bodyText1,
                                                ),
                                                Icon(Icons.star,
                                                    color: Colors.green)
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 24.0),
                                  child: Divider(
                                    color: state.themeData!.accentColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
        );}
      }),
    );
  }
}
