import 'package:cinema/api/repository.dart';
import 'package:cinema/constants/api_constants.dart';
import 'package:cinema/modal_class/cast.dart';
import 'package:cinema/screens/castncrew.dart';
import 'package:cinema/screens/cubit/scrolling_artists_cubit.dart';
import 'package:cinema/screens/cubit/scrolling_artists_state.dart';
import 'package:cinema/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class ScrollingArtists extends StatelessWidget {
  final String? id;
  final String? title, tapButtonText;
  final Function(Cast)? onTap;

  ScrollingArtists(
      {this.id, this.title, this.tapButtonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<ThemeState>(context);
    return BlocProvider(
      create: (BuildContext context) =>
          ScrollingArtistsCubit(repository: context.read<Repository>(),id: id!),
      child: BlocBuilder<ScrollingArtistsCubit, ScrollingArtistsState>(
          builder: (context, artistState) {
            if (artistState is ScrollingArtistsLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              artistState as ScrollingArtistsNormal;
              return Column(
                children: <Widget>[
                  artistState.artists == null
                      ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Text(title!,
                            style: themeState.themeData.textTheme.bodyText1),
                      ],
                    ),
                  )
                      : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(title!,
                            style: themeState.themeData.textTheme.bodyText1),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CastAndCrew(
                                    themeData: themeState.themeData,
                                    credits: artistState.artists,
                                  )));
                        },
                        child: Text(tapButtonText!,
                            style: themeState.themeData.textTheme.caption),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: artistState.artists == null
                        ? const Center(
                      child: CircularProgressIndicator(),
                    )
                        : ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: artistState.artists.cast!.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              onTap!(artistState.artists.cast![index]);
                            },
                            child: SizedBox(
                              width: 80,
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: SizedBox(
                                      width: 70,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8.0),
                                        child: artistState.artists.cast![index].profilePath ==
                                            null
                                            ? Image.asset(
                                          'assets/images/na.jpg',
                                          fit: BoxFit.cover,
                                        )
                                            : FadeInImage(
                                          image: NetworkImage(
                                              TMDB_BASE_IMAGE_URL +
                                                  'w500/' +
                                                  artistState.artists.cast![index]
                                                      .profilePath!),
                                          fit: BoxFit.cover,
                                          placeholder: AssetImage(
                                              'assets/images/loading.gif'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      artistState.artists!.cast![index].name!,
                                      style: themeState.themeData!.textTheme.caption,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ],
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