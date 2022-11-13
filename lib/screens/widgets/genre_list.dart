import 'package:cinema/modal_class/genre.dart';
import 'package:cinema/screens/cubit/genre_list_cubit.dart';
import 'package:cinema/screens/cubit/genre_list_state.dart';
import 'package:cinema/screens/genremovies.dart';
import 'package:cinema/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class GenreList extends StatelessWidget {
  final List<int> genres;
  final List<Genre> totalGenres;

  GenreList(this.genres, this.totalGenres);

  @override
  Widget build(BuildContext context) {
    print(genres.toString() + "000000000000000000");
    print(totalGenres.toString() + "000000000000000");
    final state = Provider.of<ThemeState>(context);
    return BlocProvider(
      create: (BuildContext context) =>
          GenreCubit(genres: genres, totalGenres: totalGenres),
      child: BlocBuilder<GenreCubit, GenreState>(
          builder: (context, genreState) {
            if (genreState is GenreStateLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              genreState as GenreStateNormal;
              return SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Center(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: genreState.genres!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GenreMovies(
                                        themeData: state.themeData,
                                        genre: genreState.genres![index],
                                        genres: totalGenres,
                                      )));
                            },
                            child: Chip(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1,
                                    style: BorderStyle.solid,
                                    color: state.themeData.accentColor),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              label: Text(
                                genreState.genres![index].name!,
                                style: state.themeData.textTheme.bodyText1,
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        );
                      },
                    ),
                  ));
            }
          }),
    );
  }
}