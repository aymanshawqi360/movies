// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:movies_app/core/business_logic/cubit/movies_cubit.dart';
// import 'package:movies_app/core/constants/my_colors.dart';

// import 'package:movies_app/core/data/model/movies_api.dart';
// import 'package:movies_app/core/presentation/page_display_movies/screen/movies_images_action/movies_images_action.dart';

// class MoviesNames extends StatefulWidget {
//   final MoviesApi moviesApi;
//   int numberIndex;
//   // final List<MoviesApi> movies;
//   MoviesNames({
//     super.key,
//     required this.moviesApi,
//     required this.numberIndex,
//   });

//   @override
//   State<MoviesNames> createState() => _MoviesNamesState();
// }

// class _MoviesNamesState extends State<MoviesNames> {
//   // final Map<int, String> genres = {
//   Map<int, String> genreMap = {
//     28: 'Action', // أكشن
//     878: 'Science Fiction', // خيال علمي
//     35: 'Comedy', // كوميديا
//     12: 'Adventure', // مغامرة
//     53: 'Thriller', // إثارة
//     // يمكنك إضافة المزيد من الأنواع هنا
//   };
//   List dd = [
//     "Action",
//     "Science Fiction",
//     "Comedy",
//     "Adventure",
//     "Thriller",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//             height: 40.h,
//             child: CustomScrollView(
//               scrollDirection: Axis.horizontal,
//               slivers: [
//                 SliverList(
//                   delegate: SliverChildBuilderDelegate(
//                     (context, index) {
//                       return Container(
//                         // margin: EdgeInsets.symmetric(horizontal: 8),
//                         // width: 3.w,
//                         // height: 100,
//                         margin: EdgeInsets.symmetric(horizontal: 8.h),
//                         decoration: BoxDecoration(
//                             // color: MyColors.myAmber,
//                             borderRadius: BorderRadius.circular(8)),
//                         child: TextButton(
//                           style: TextButton.styleFrom(
//                               overlayColor: Colors.transparent),
//                           onPressed: () {
//                             setState(() {
//                               widget.numberIndex = index;
//                             });
//                           },
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "${dd[index]}",
//                                 style: TextStyle(
//                                     color: widget.numberIndex == index
//                                         ? Colors.white
//                                         : MyColors.myAmber,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 12.sp),
//                               ),
//                               Container(
//                                 width: 20.w,
//                                 height: 1.8.h,
//                                 decoration: BoxDecoration(
//                                     color: widget.numberIndex == index
//                                         ? MyColors.myAmber
//                                         : null,
//                                     borderRadius: BorderRadius.circular(5.r)),
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                     childCount: dd.length,
//                   ),
//                 ),
//               ],
//             )),
//         MoviesImageAction(moviesApi: widget.moviesApi, vi: widget.numberIndex)
//       ],
//     );
//   }
// }
