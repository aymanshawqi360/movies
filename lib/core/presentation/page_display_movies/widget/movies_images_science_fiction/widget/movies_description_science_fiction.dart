// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:movies_app/core/constants/my_colors.dart';

import 'package:movies_app/core/data/model/movies_api.dart';

class MoviesDescriptionScienceFiction extends StatelessWidget {
  final MoviesApi moviesApi;
  const MoviesDescriptionScienceFiction({
    super.key,
    required this.moviesApi,
  });

  @override
  Widget build(BuildContext context) {
    DateTime parsedDate = DateTime.parse(moviesApi.releaseDate);
    String formattedDate = DateFormat('MMMM d, yyyy').format(parsedDate);
    return Scaffold(
      // backgroundColor: ,

      body: Container(
        color: Theme.of(context).primaryColor,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  child: Hero(
                    tag: moviesApi.id,
                    child: Image.network(
                      "https://image.tmdb.org/t/p/w500/${moviesApi.backdropPath}",
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(moviesApi.originalTitle,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: GoogleFonts.aboreto(
                                        color: Colors.white, fontSize: 23.sp)),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Image.asset(
                                  "assets/images/Group 275.png",
                                  scale: 4.2,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 0.w,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/pngegg.png",
                            height: 17.h,
                          ),
                          Text(
                            "${moviesApi.popularity}",
                            style:
                                TextStyle(color: Colors.white, fontSize: 9.sp),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            color: MyColors.myAmber,
                            size: 17.sp,
                          ),
                          Text(
                            "${moviesApi.voteAverage}",
                            style:
                                TextStyle(color: Colors.white, fontSize: 9.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                      const Divider(
                        thickness: 0.4,
                        // width: 10,
                        color: Color(0xff515151),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Release date",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        formattedDate,
                        style: const TextStyle(color: Color(0xffBCBCBC)),
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                      const Divider(
                        thickness: 0.4,
                        // width: 10,
                        color: Color(0xff515151),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "overview",
                        style: TextStyle(color: Colors.white, fontSize: 17.sp),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Text(
                        moviesApi.overview,
                        style: const TextStyle(color: Color(0xffBCBCBC)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        // padding: EdgeInsets.symmetric(horizontal: 10),
                        margin: EdgeInsets.symmetric(vertical: 15.h),
                        width: 330.w,
                        height: 35.h,

                        decoration: BoxDecoration(
                            color: MyColors.myAmber,
                            borderRadius: BorderRadius.circular(6.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/Play.png",
                              height: 15.h,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Play Now",
                              style: GoogleFonts.albertSans(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10.h),
                        width: 330.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                            // color: MyColors.myAmber,
                            border: Border.all(color: MyColors.myAmber),
                            borderRadius: BorderRadius.circular(6.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/Download.png",
                              height: 15.h,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Download",
                              style: GoogleFonts.albertSans(
                                  color: MyColors.myAmber,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 45,
              left: 15,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
