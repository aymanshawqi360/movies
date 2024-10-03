// // ignore_for_file: public_member_api_docs, sort_constructors_first

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:movies_app/core/data/model/movies_api.dart';

// class CarouselSliderImages extends StatelessWidget {
//   // final MoviesApi moviesApi;
//   final List moviesApi;
//   const CarouselSliderImages({super.key, required this.moviesApi});

//   // Widget buildImagesCarouselSlider() {
//   //   // final mm = listMovies.length;
//   //   return CarouselSlider.builder(
//   //       itemCount: ccc.length,
//   //       itemBuilder: (context, index, moviesIndex) {
//   //         return CarouselSliderImages(moviesApi: ccc[index]);
//   //       },
//   //       options: CarouselOptions(
//   //           autoPlay: true,
//   //           enlargeCenterPage: true,
//   //           aspectRatio: 2.1,
//   //           autoPlayInterval: Duration(seconds: 3)));
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: EdgeInsets.symmetric(horizontal: 10.h),
//         child: CarouselSlider.builder(
//             itemCount: moviesApi.length,
//             itemBuilder: (context, index, moviesIndex) {
//               return ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: moviesApi[index].backdropPath.isNotEmpty
//                       ? FadeInImage.assetNetwork(
//                           placeholder: "assets/images/loading.gif",
//                           image:
//                               "https://image.tmdb.org/t/p/original/${moviesApi[index].backdropPath}")
//                       : Image.asset("assets/images/no_internet.png"));
//             },
//             options: CarouselOptions(
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//                 aspectRatio: 2.1,
//                 autoPlayInterval: const Duration(seconds: 3))));
//   }
// }



// // CachedNetworkImage(
// //       imageUrl: "https://image.tmdb.org/t/p/original/${moviesApi.backdropPath}",
// //       placeholder: (context, url) => Image.asset("assets/images/loading.gif"),
// //       // errorWidget: (context, url, error) =>Image.asset("assets/images/loading.gif"),
// //       fit: BoxFit.cover,
// //       errorWidget: (context, url, error) => Icon(Icons.error),
// //     );