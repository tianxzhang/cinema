import 'package:cinema/modal_class/genres_response.dart';
import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {}

class HomeStateLoading extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeStateNormal extends HomeState {
  final GenresResponse? genresResponse;

  HomeStateNormal(this.genresResponse);

  @override
  List<Object?> get props => [genresResponse];
}
