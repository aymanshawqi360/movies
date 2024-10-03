// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movies_app/core/business_logic/cubit_pages/cubit/pages_cubit.dart';

import 'package:movies_app/core/constants/my_colors.dart';
import 'package:movies_app/core/data/model/movies_api.dart';

import 'package:movies_app/core/presentation/screen/widget_favorite.dart';

class FavoritMoviesAction extends StatefulWidget {
  // final MoviesApi moviesApi;
  const FavoritMoviesAction({
    super.key,
    // required this.moviesApi,
  });

  @override
  State<FavoritMoviesAction> createState() => _FavoritMoviesActionState();
}

class _FavoritMoviesActionState extends State<FavoritMoviesAction> {
  List<MoviesApi> favoriteAction = [];
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: BlocBuilder<PagesCubit, PagesState>(
        builder: (context, state) {
          favoriteAction = context.read<PagesCubit>().favorit;
          print(favoriteAction);
          return favoriteAction.isNotEmpty
              ? ListView.builder(
                  itemCount: favoriteAction.length,
                  itemBuilder: (context, index) {
                    return WidgetFavoritebuild(
                        moviesApi: favoriteAction[index]);
                  })
              : textListNull();
        },
      ),
    );
  }
}

Widget textListNull() {
  return const Center(
      child: Text('No favorite movies yet.',
          style: TextStyle(color: MyColors.myAmber)));
}
