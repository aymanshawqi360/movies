import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/my_colors.dart';

Widget buildSearchWidget() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 1.h),
    margin: EdgeInsets.symmetric(
      horizontal: 10.w,
    ),
    width: double.infinity,
    height: 38.h,
    decoration: BoxDecoration(
        color: MyColors.myBlack, borderRadius: BorderRadius.circular(10.r)),
    child: TextFormField(
      // autofocus: false,
      // style: TextStyle(
      //   fontSize: 13.sp,
      // ),
      style:
          const TextStyle(color: Colors.white, decorationColor: Colors.black),
      cursorColor: Colors.white,

      decoration: InputDecoration(
          border: InputBorder.none,
          // contentPadding: EdgeInsets.only(left: -5),
          hintText: "Search movie, series, ...",
          hintStyle: TextStyle(
              height: 2,
              color: Colors.grey,
              fontSize: 12.sp,
              fontStyle: FontStyle.italic),
          prefixIcon: Padding(
            padding: EdgeInsets.only(top: 3.h),
            child: Image.asset(
              "assets/images/Search_two.png",
              scale: 3,
            ),
          ),
          suffixIcon: Container(
            // padding: EdgeInsets.only(top: 1.h),
            margin: EdgeInsets.only(right: 8.w, bottom: 3.5.h, top: 4.h),
            // width: 1.w,
            decoration: BoxDecoration(
                color: MyColors.myAmber,
                borderRadius: BorderRadius.circular(8)),
            child: Image.asset(
              "assets/images/Filter.png",
              scale: 3.2,
            ),
          )
          // label: Image.asset(
          //   "assets/images/Search.png",
          //   scale: 3,
          // ),
          ),
      // cursorColor: Colors.white,
    ),
  );
}
