// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'pages_cubit.dart';

@immutable
sealed class PagesState {}

final class PagesInitial extends PagesState {}

class FavoriteLoaded extends PagesState {
  final List<MoviesApi> moviesFavoriteLoaded;
  // final bool f;
  // final List<int> id;
  FavoriteLoaded({
    required this.moviesFavoriteLoaded,
    // required this.id,
  });
}

class FavoriteLoading extends PagesState {
  final List<MoviesApi> moviesFavoriteLoading;

  FavoriteLoading({required this.moviesFavoriteLoading});
}

class Incremait extends PagesState {
  final bool i;

  Incremait({required this.i});
}

class Decrmaint extends PagesState {
  final String d;

  Decrmaint({required this.d});

  // Decrmaint(this.d);
}

class FlaseTrue extends PagesState {
  final int i;

  FlaseTrue({required this.i});
}

class FlaseFalse extends PagesState {
  final int i;

  FlaseFalse({required this.i});
}

class SaveIcons extends PagesState {
  final List<int> saveIcons;

  SaveIcons({required this.saveIcons});
}
