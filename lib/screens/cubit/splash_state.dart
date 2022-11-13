import 'package:equatable/equatable.dart';

class SplashState extends Equatable {
  final bool redirect;

  const SplashState(this.redirect);

  @override
  List<Object?> get props => [redirect];
}