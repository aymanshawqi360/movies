import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/business_logic/cubit_pages/cubit/pages_cubit.dart';
import 'package:movies_app/core/constants/my_colors.dart';
import 'package:movies_app/core/data/model/movies_api.dart';

class WidgetFavoritebuild extends StatelessWidget {
  final MoviesApi moviesApi;
  const WidgetFavoritebuild({super.key, required this.moviesApi});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: Key("${moviesApi.id}"),
        direction: DismissDirection.endToStart,
        onDismissed: (direction) {
          context.read<PagesCubit>().getAddMoviesFavorite(
                moviesApi,
              );

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                backgroundColor: MyColors.myAmber,
                content: Text(
                  '${moviesApi.title} deleted',
                  style: TextStyle(fontSize: 13.sp),
                )),
          );
        },
        background: Container(
          margin: EdgeInsets.symmetric(vertical: 11.h, horizontal: 10.h),
          color: Colors.red,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: 20.0),
          child: Icon(
            Icons.delete,
            color: Colors.white,
            size: 27.sp,
          ),
        ),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 9.h),
              height: 70.h,
              // width: 50,
              decoration: BoxDecoration(
                  color: MyColors.myAmber,
                  borderRadius: BorderRadius.circular(8.r)),
              child: Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.r),
                      child: Image.network(
                        "https://image.tmdb.org/t/p/w500/${moviesApi.posterPath}",
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Text(moviesApi.originalTitle,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: GoogleFonts.aboreto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.sp)),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "vote count",
                            style:
                                TextStyle(color: Colors.white, fontSize: 13.sp),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            "vote average",
                            style:
                                TextStyle(color: Colors.white, fontSize: 13.sp),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 18.w,
                          ),
                          Text(
                            "${moviesApi.voteCount}",
                            style: const TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 55.w,
                          ),
                          Text(
                            "${moviesApi.voteAverage}",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
