import 'package:flutter/material.dart';
import 'package:movies_app/core/presentation/page_display_movies/screen/page_display_movies.dart';
import 'package:movies_app/core/presentation/screen/favorit_movies_action.dart';
import 'package:shared_preferences/shared_preferences.dart';

var listPage = [
  const PageDisplayMovies(),
  const Text(
    "pageOne",
    style: TextStyle(color: Colors.white),
  ),
  FavoritMoviesAction(),
  const Text("pageThree", style: TextStyle(color: Colors.white)),
  // Text("pageFour"),
];

SharedPreferences? sharedPreferences;
