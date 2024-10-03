import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movies_app/core/business_logic/cubit/movies_cubit.dart';
import 'package:movies_app/core/constants/my_colors.dart';
import 'package:movies_app/core/presentation/page_display_movies/widget/movies_images_thriller/moives_images_thriller.dart';
import 'package:movies_app/core/presentation/page_display_movies/widget/movies_images_action/movies_images_action.dart';
import 'package:movies_app/core/presentation/page_display_movies/widget/movies_images_adventure/movies_images_adventure.dart';
import 'package:movies_app/core/presentation/page_display_movies/widget/movies_images_comedy/movies_images_comedy.dart';
import 'package:movies_app/core/presentation/page_display_movies/widget/movies_images_science_fiction/movies_images_science_fiction.dart';

import 'package:movies_app/core/presentation/page_display_movies/widget/search_moives.dart';

import '../../../data/model/movies_api.dart';

class PageDisplayMovies extends StatefulWidget {
  const PageDisplayMovies({super.key});

  @override
  State<PageDisplayMovies> createState() => _PageDisplayMoviesState();
}

class _PageDisplayMoviesState extends State<PageDisplayMovies> {
  List<MoviesApi> movies = [];
  // List<MoviesApi> moviesPopular = [];
  int numberindex = 0;
  @override
  void initState() {
    super.initState();
    BlocProvider.of<MoviesCubit>(context).getMoviesCubit();
    // BlocProvider.of<MoviesCubit>(context).getMoviesPopularCubit();
  }

  Widget buildBlocWidget() {
    return BlocBuilder<MoviesCubit, MoviesState>(builder: (cotext, state) {
      if (state is Loaded) {
        movies = (state).moviesList;

        return buildGenresMoviesWidget();
      } else {
        return buildCircularProgressIndicatorWodget();
      }
    });
  }

  Widget buildCircularProgressIndicatorWodget() {
    return const Center(
      child: CircularProgressIndicator(
        color: MyColors.myAmber,
      ),
    );
  }

  Widget buildGenresMoviesWidget() {
    List<MoviesApi> actionMovies = movies.where((movie) {
      //this is movies
      return movie.genreIds.contains(28);
    }).toList();
    List<MoviesApi> scienceFictionMovies = movies.where((movie) {
      //this is movies
      return movie.genreIds.contains(878);
    }).toList();
    List<MoviesApi> comedyMovies = movies.where((movie) {
      //this is movies
      return movie.genreIds.contains(35);
    }).toList();
    List<MoviesApi> adventurerMovies = movies.where((movie) {
      //this is movies
      return movie.genreIds.contains(12);
    }).toList();
    List<MoviesApi> thrillermoives = movies.where((movie) {
      //this is movies
      return movie.genreIds.contains(53);
    }).toList();

    List TextDisplayList = [
      "Action",
      "Science Fiction",
      "Comedy",
      "Adventure",
      "Thriller",
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          buildSearchWidget(),
          SizedBox(
            height: 10.h,
          ),
          Column(
            children: [
              SizedBox(
                  height: 30.h,
                  child: CustomScrollView(
                    scrollDirection: Axis.horizontal,
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return Container(
                              // margin: EdgeInsets.symmetric(horizontal: 8),
                              // width: 3.w,
                              // height: 100,
                              margin: EdgeInsets.symmetric(horizontal: 8.h),
                              decoration: BoxDecoration(
                                  // color: MyColors.myAmber,
                                  borderRadius: BorderRadius.circular(8)),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    overlayColor: Colors.transparent),
                                onPressed: () {
                                  numberindex = index;

                                  setState(() {
                                    numberindex = index;
                                  });
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${TextDisplayList[index]}",
                                      style: TextStyle(
                                          color: numberindex == index
                                              ? Colors.white
                                              : MyColors.myAmber,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 9.sp),
                                    ),
                                    Container(
                                      width: 20.w,
                                      height: 1.8.h,
                                      decoration: BoxDecoration(
                                          color: numberindex == index
                                              ? MyColors.myAmber
                                              : null,
                                          borderRadius:
                                              BorderRadius.circular(5.r)),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          childCount: TextDisplayList.length,
                        ),
                      ),
                    ],
                  )),
              MasonryGridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: actionMovies.length,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return MoviesImageAction(
                      moviesApi: actionMovies[index],
                      vi: numberindex,
                    );
                  }),
              MasonryGridView.builder(
                  scrollDirection: Axis.vertical,

                  // mainAxisSpacing: ,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: scienceFictionMovies.length,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return MoviesImagesScienceFiction(
                      moviesApi: scienceFictionMovies[index],
                      vi: numberindex,
                    );
                  }),
              MasonryGridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: comedyMovies.length,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return MoviesImagesComedy(
                      moviesApi: comedyMovies[index],
                      vi: numberindex,
                    );
                  }),
              MasonryGridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: adventurerMovies.length,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return MoviesImagesAdventurer(
                      moviesApi: adventurerMovies[index],
                      vi: numberindex,
                    );
                  }),
              MasonryGridView.builder(
                  scrollDirection: Axis.vertical,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: thrillermoives.length,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return MoivesImagesThriller(
                      moviesApi: thrillermoives[index],
                      vi: numberindex,
                    );
                  }),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildBlocWidget();
  }
}
