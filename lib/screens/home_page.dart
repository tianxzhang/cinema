import 'package:cinema/api/repository.dart';
import 'package:cinema/main.dart';
import 'package:cinema/modal_class/movie_entity.dart';
import 'package:cinema/screens/cubit/home_cubit.dart';
import 'package:cinema/screens/cubit/home_state.dart';
import 'package:cinema/screens/movie_detail.dart';
import 'package:cinema/screens/search_view.dart';
import 'package:cinema/screens/settings.dart';
import 'package:cinema/screens/widgets/discover_movies.dart';
import 'package:cinema/screens/widgets/scrolling_movies.dart';
import 'package:cinema/theme/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<ThemeState>(context);
    return BlocProvider(
      create: (BuildContext context) =>
          HomeCubit(repository: context.read<Repository>()),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: state.themeData.colorScheme.secondary,
            ),
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
          ),
          centerTitle: true,
          title: Text(
            'Cinema',
            style: state.themeData.textTheme.headline5,
          ),
          backgroundColor: state.themeData.primaryColor,
          actions: <Widget>[
            BlocBuilder<HomeCubit, HomeState>(builder: (context, homeState) {
              return IconButton(
                color: state.themeData.accentColor,
                icon: Icon(Icons.search),
                onPressed: () async {
                  if(homeState is HomeStateNormal) {
                    final MovieEntity? result = await showSearch<MovieEntity?>(
                        context: context,
                        delegate:
                        MovieSearch(themeData: state.themeData, genres: homeState.genresResponse!.genres));
                    if (result != null) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MovieDetailPage(
                                  movie: result,
                                  themeData: state.themeData,
                                  genres: homeState.genresResponse!.genres!,
                                  heroId: '${result.id}search')));
                    }
                  }
                },
              );
            })
          ],
        ),
        drawer: Drawer(
          child: SettingsPage(),
        ),
        body: Container(
          color: state.themeData.primaryColor,
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[

              DiscoverMovies(),
              ScrollingMovies(
                themeData: state.themeData,
                title: 'Top Rated',
              ),
              ScrollingMovies(
                themeData: state.themeData,
                title: 'Now Playing',
              ),
              ScrollingMovies(
                themeData: state.themeData,
                title: 'Popular',
              ),
            ],
          ),
        ),
      ),
    );
  }
}