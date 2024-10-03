// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:movies_app/core/constants/my_colors.dart';

// import 'package:movies_app/core/data/model/movies_api.dart';

// class DisplayMovies extends StatelessWidget {
//   final MoviesApi moviesApi;
//   const DisplayMovies({
//     Key? key,
//     required this.moviesApi,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     //  List actionMovies = moviesApi.where((movie) {
//     //   return movie['genre_ids'].contains(28); // 28 هو معرف نوع الأكشن
//     // }).toList();
//     return Container(
//       // padding: EdgeInsets.symmetric(horizontal: 8),
//       margin: EdgeInsets.symmetric(horizontal: 10.w),
//       width: 110.w,
//       decoration: BoxDecoration(
//           color: MyColors.myAmber, borderRadius: BorderRadius.circular(10.r)),
//       child: GridTile(
//         child: Container(
//           // width: 115.w,
//           // padding: EdgeInsets.symmetric(horizontal: 10.w),
//           // margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
//           decoration: BoxDecoration(
//             color: MyColors.myAmber,
//             borderRadius: BorderRadius.circular(10.r),
//             image: DecorationImage(
//                 image: moviesApi.posterPath.isNotEmpty
//                     ? NetworkImage(
//                         "https://image.tmdb.org/t/p/w500/${moviesApi.posterPath}")
//                     : NetworkImage("assets/images/loading.gif"),
//                 fit: BoxFit.cover),
//           ),
//           // border: BorderDirectional(
//           //   top: BorderSide(
//           //     color: MyColors.myAmber,
//           //     width: 2,
//           //   ),
//           //   end: BorderSide(
//           //     color: Colors.amber.withOpacity(0.4),
//           //   ),
//           //   start: BorderSide(
//           //     color: Colors.amber.withOpacity(0.4),
//           //   ),
//           // ),
//         ),
//         footer: Container(
//           margin: EdgeInsets.only(bottom: 0.h),
//           // padding: EdgeInsets.symmetric(vertical: 10),
//           //padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//           decoration: BoxDecoration(
//               color: Colors.black54,
//               borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(10.r),
//                   bottomRight: Radius.circular(10.r))),
//           child: Text(
//             textAlign: TextAlign.center,
//             overflow: TextOverflow.ellipsis,
//             "${moviesApi.originalTitle}",
//             style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 10.sp),
//           ),
//         ),
//       ),
//     );
//   }
// }
// //  child: moviesApi.posterPath.isNotEmpty
// //             ? FadeInImage.assetNetwork(
// //                 // width: double.infinity,
// //                 // height: 60.h,
// //                 placeholder: "assets/images/loading3.gif",
// //                 image:
// //                     "https://image.tmdb.org/t/p/w500/${moviesApi.posterPath}",
// //                 // fit: BoxFit.cover,
// //               )
// //             : Image.asset("assets/images/no_internet.png"),