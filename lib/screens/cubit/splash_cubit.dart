import 'package:cinema/main.dart';
import 'package:cinema/screens/cubit/splash_state.dart';
import 'package:cinema/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState(false)) {
    Future.delayed(const Duration(seconds: 2), () {
      emit(const SplashState(true));
    });
  }
}
