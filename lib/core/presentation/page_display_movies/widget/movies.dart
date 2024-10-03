// import 'package:flutter/material.dart';
// import 'package:movies_app/core/data/model/movies_api.dart';

// class Movies extends StatelessWidget {
//   final MoviesApi moviesApi;
//   Movies({super.key, required this.moviesApi});

//   @override
//   Widget build(BuildContext context) {
//         List<MoviesApi> actionMovies = moviesApi.where((movie) {
//       return movie['genre_ids'].contains(28); // 28 هو معرف نوع الأكشن
//     }).toList();
//     return Container(
//       child: Text(moviesApi),
//     );
//   }
// }
