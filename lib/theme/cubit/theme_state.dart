import 'package:cinema/theme/theme_state.dart';
import 'package:equatable/equatable.dart';

class ThemeStatusState extends Equatable {
  final ThemeStateEnum themeState;

  const ThemeStatusState(this.themeState);

  @override
  List<Object?> get props => [themeState];
}