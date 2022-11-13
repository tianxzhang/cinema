import 'package:cinema/theme/cubit/theme_state.dart';
import 'package:cinema/theme/theme_state.dart';
import 'package:cinema/theme/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<ThemeStatusState> {
  SharedPreferences? _sharedPreferences;

  ThemeCubit() : super(const ThemeStatusState(ThemeStateEnum.dark)) {
    _initSharedPrefs();
  }

  _initSharedPrefs() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    ThemeStateEnum val = _getOption();
    _switchTheme(val);
  }

  ThemeStateEnum _getOption() {
    int option = _sharedPreferences?.get('theme_option') as int? ?? 1;
    return ThemeStateEnum.values[option];
  }

  _switchTheme(ThemeStateEnum selected) {
    switch(selected) {
      case ThemeStateEnum.light:
        emit(const ThemeStatusState(ThemeStateEnum.light));
        break;
      case ThemeStateEnum.dark:
        emit(const ThemeStatusState(ThemeStateEnum.dark));
        break;
      case ThemeStateEnum.amoled:
        emit(const ThemeStatusState(ThemeStateEnum.amoled));
        break;
    }
  }
}