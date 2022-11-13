import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:cinema/screens/cubit/splash_cubit.dart';
import 'package:cinema/screens/cubit/splash_state.dart';
import 'package:cinema/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../theme/theme_state.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<ThemeState>(context);
    return BlocProvider(
      create: (BuildContext context) => SplashCubit(),
      child: BlocBuilder<SplashCubit, SplashState>(builder: (context, state) {
        if (state.redirect) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          });
        }
        return Scaffold(
          backgroundColor: const Color(0xff0d253f),
          body: Center(
            child: FadedScaleAnimation(
              child: SvgPicture.asset("assets/tmdb.svg", color: Colors.blue),
            ),
          ),
        );
      }),
    );
  }
}
