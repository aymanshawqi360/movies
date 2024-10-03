import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/business_logic/cubit/movies_cubit.dart';
import 'package:movies_app/core/business_logic/cubit_pages/cubit/pages_cubit.dart';
import 'package:movies_app/core/constants/string_router.dart';
import 'package:movies_app/core/data/model/movies_api.dart';
import 'package:movies_app/core/data/repository/repository_movies.dart';
import 'package:movies_app/core/data/web_services/movies_web_services.dart';
import 'package:movies_app/core/presentation/page_display_movies/widget/movies_images_adventure/widget/movies_description_adventure.dart';
import 'package:movies_app/core/presentation/page_display_movies/widget/movies_images_comedy/widget/movies_description_comedy.dart';
import 'package:movies_app/core/presentation/page_display_movies/widget/movies_images_thriller/widget/movies_description_thriller.dart';
import 'package:movies_app/core/presentation/page_display_movies/widget/movies_images_science_fiction/widget/movies_description_science_fiction.dart';
import 'package:movies_app/core/presentation/screen/favorit_movies_action.dart';
import 'package:movies_app/core/presentation/screen/home_screen.dart';
import 'package:movies_app/core/presentation/page_display_movies/widget/movies_images_action/widget/movie_desctiption.dart';

import '../core/presentation/page_display_movies/screen/page_display_movies.dart';

class AppRouter {
  late RepositoryMovies repositoryMovies;
  late MoviesCubit moviesCubit;
  AppRouter() {
    repositoryMovies = RepositoryMovies(moviesWebServices: MoviesWebServices());
    moviesCubit = MoviesCubit(repositoryMovies);
  }

  Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case homeScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext contex) => moviesCubit,
                  child: HomeScreen(),
                ));
//////////////////////////////////////////////////////////////////////////////////////
      case pageDisplayMovies:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext contex) => moviesCubit,
                  child: const PageDisplayMovies(),
                ));
//////////////////////////////////////////////////////////////////////////////////////
      case movieDescription:
        final descriptionAction = routeSettings.arguments as MoviesApi;
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => moviesCubit,
                  child: MovieDesctiption(
                    moviesApi: descriptionAction,
                  ),
                ));
//////////////////////////////////////////////////////////////////////////////////////
      case moviesDescriptionScienceFiction:
        final descriptionScienceFiction = routeSettings.arguments as MoviesApi;
        return MaterialPageRoute(
            builder: (_) => MoviesDescriptionScienceFiction(
                  moviesApi: descriptionScienceFiction,
                ));
//////////////////////////////////////////////////////////////////////////////////////
      case moviesDescriptionComedy:
        final descriptioComdey = routeSettings.arguments as MoviesApi;
        return MaterialPageRoute(
            builder: (_) => MoviesDescriptionComedy(
                  moviesApi: descriptioComdey,
                ));
//////////////////////////////////////////////////////////////////////////////////////
      case moviesDescriptionAdventure:
        final descriptionAdventure = routeSettings.arguments as MoviesApi;
        return MaterialPageRoute(
            builder: (_) => MoviesDescriptionAdventure(
                  moviesApi: descriptionAdventure,
                ));

//////////////////////////////////////////////////////////////////////////////////////

      case moviesDescriptionThriller:
        final descriptionThriller = routeSettings.arguments as MoviesApi;
        return MaterialPageRoute(
            builder: (_) => MoviesDescriptionThriller(
                  moviesApi: descriptionThriller,
                ));
//////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////
      case favoriteMoviesAction:
        // final favoriteMoviesAction = routeSettings.arguments as MoviesApi;
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => PagesCubit(),
                  child: FavoritMoviesAction(),
                ));
    }
  }
}
