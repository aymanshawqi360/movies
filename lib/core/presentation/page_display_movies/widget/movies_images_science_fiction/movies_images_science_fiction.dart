import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/business_logic/cubit_pages/cubit/pages_cubit.dart';
import 'package:movies_app/core/constants/string_router.dart';

import 'package:movies_app/core/data/model/movies_api.dart';

import '../../../../constants/my_colors.dart';

class MoviesImagesScienceFiction extends StatefulWidget {
  final MoviesApi moviesApi;
  final int vi;

  const MoviesImagesScienceFiction({
    super.key,
    required this.moviesApi,
    required this.vi,
  });

  @override
  State<MoviesImagesScienceFiction> createState() =>
      _MoviesImagesScienceFictionState();
}

class _MoviesImagesScienceFictionState
    extends State<MoviesImagesScienceFiction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Visibility(
        visible: widget.vi == 1 ? true : false,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, movieDescription,
                arguments: widget.moviesApi);
          },
          child: Hero(
            tag: widget.moviesApi.id,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: MyColors.myAmber,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://image.tmdb.org/t/p/w500/${widget.moviesApi.posterPath}",
                                ))),
                        height: 175.h,
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                            height: 35,
                            width: 39,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.r),
                                )),
                            child: IconButton(onPressed: () {
                              context
                                  .read<PagesCubit>()
                                  .getAddMoviesFavorite(widget.moviesApi);
                            }, icon: BlocBuilder<PagesCubit, PagesState>(
                              builder: (context, state) {
                                final isFavorite =
                                    context.watch<PagesCubit>().favorit;
                                return Icon(Icons.favorite_rounded,
                                    color: isFavorite.any((test) =>
                                            test.id == widget.moviesApi.id)
                                        ? Colors.red
                                        : Colors.black);
                              },
                            ))),
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}








// class MoviesImage extends StatelessWidget {
//   const MoviesImage({
//     super.key,
//     required this.movies,
//   });

//   final List<MoviesApi> movies;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 133.h,
//       child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: movies.length - 14,
//           shrinkWrap: true,
//           itemBuilder: (context, index) {
//             return DisplayMovies(
//               moviesApi: movies[index],
//             );
//           }),
//     );
//   }
// }