import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/constants/string_router.dart';

import 'package:movies_app/core/data/model/movies_api.dart';

import '../../../../business_logic/cubit_pages/cubit/pages_cubit.dart';
import '../../../../constants/my_colors.dart';

class MoivesImagesThriller extends StatefulWidget {
  final MoviesApi moviesApi;
  final int vi;

  const MoivesImagesThriller({
    super.key,
    required this.moviesApi,
    required this.vi,
  });

  @override
  State<MoivesImagesThriller> createState() => _MoivesImagesThrillerState();
}

class _MoivesImagesThrillerState extends State<MoivesImagesThriller> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Visibility(
        visible: widget.vi == 4 ? true : false,
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

    // return Container(
    //   // height: double.infinity,
    //   // margin: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
    //   // width: 50.w,
    //   // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
    //   child: Visibility(
    //     visible: vi == 4 ? true : false,
    //     child: InkWell(
    //       onTap: () {
    //         Navigator.pushNamed(context, moviesDescriptionAdventure,
    //             arguments: moviesApi);
    //       },
    //       child: Hero(
    //         tag: moviesApi.id,
    //         child: Padding(
    //             padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
    //             child: ClipRRect(
    //               borderRadius: BorderRadius.circular(20.r),
    //               child: Container(
    //                 // margin: EdgeInsets.all(10),
    //                 decoration: BoxDecoration(
    //                     color: MyColors.myAmber,
    //                     image: DecorationImage(
    //                         fit: BoxFit.cover,
    //                         image: NetworkImage(
    //                           "https://image.tmdb.org/t/p/w500/${moviesApi.posterPath}",
    //                         ))),
    //                 // scale: 2.6,
    //                 height: 175.h,
    //                 // width: double.infinity,
    //                 // fit: BoxFit.cover,
    //               ),
    //             )),
    //       ),
    //     ),
    //   ),
    // );


    // return Container(
    //   // height: double.infinity,
    //   child: Visibility(
    //     visible: vi == 4 ? true : false,
    //     child: Padding(
    //         padding: EdgeInsets.symmetric(horizontal: 10.w),
    //         child: InkWell(
    //           onTap: () {
    //             Navigator.pushNamed(context, moviesDescriptionThriller,
    //                 arguments: moviesApi);
    //           },
    //           child: Hero(
    //             tag: moviesApi.id,
    //             child: Padding(
    //                 padding: EdgeInsets.symmetric(
    //                   horizontal: 10.w,
    //                   vertical: 6.h,
    //                 ),
    //                 child: ClipRRect(
    //                     borderRadius: BorderRadius.circular(20),
    //                     child: Image.network(
    //                       "https://image.tmdb.org/t/p/w500/${moviesApi.posterPath}",
    //                       scale: 2.6,
    //                     ))),
    //           ),
    //         )),
    //   ),
    // );





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