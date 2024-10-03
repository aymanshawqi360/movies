// import 'package:flutter/material.dart';
import 'package:movies_app/core/presentation/page_display_movies/screen/page_display_movies.dart';
import 'package:movies_app/core/presentation/screen/favorit_movies_action.dart';
import 'package:movies_app/core/presentation/screen/page_search_movies.dart';
import 'package:movies_app/core/presentation/screen/pages_profile_movies.dart';
// import 'package:shared_preferences/shared_preferences.dart';

var listPage = [
  const PageDisplayMovies(),
  const PageSearchMovies(),
  const FavoritMoviesAction(),
  const PagesProfileMovies()
  // Text("pageFour"),
];

// SharedPreferences? sharedPreferences;
