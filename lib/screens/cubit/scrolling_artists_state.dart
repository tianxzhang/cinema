import 'package:cinema/modal_class/artists_response.dart';
import 'package:equatable/equatable.dart';

abstract class ScrollingArtistsState extends Equatable {}

class ScrollingArtistsLoading extends ScrollingArtistsState {
  @override
  List<Object?> get props => [];
}

class ScrollingArtistsNormal extends ScrollingArtistsState {
  final ArtistsResponse artists;

  ScrollingArtistsNormal(this.artists);

  @override
  List<Object?> get props => [artists];
}
