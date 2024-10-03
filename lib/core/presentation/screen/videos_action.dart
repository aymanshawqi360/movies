// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:movies_app/core/constants/my_colors.dart';

// import 'package:movies_app/core/data/model/videos_action_api.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class VideosAction extends StatefulWidget {
//   final VideosActionApi videosActionApi;
//   const VideosAction({
//     Key? key,
//     required this.videosActionApi,
//   }) : super(key: key);

//   @override
//   State<VideosAction> createState() => _VideosActionState();
// }

// class _VideosActionState extends State<VideosAction> {
//   late YoutubePlayerController _controller;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _controller = YoutubePlayerController(
//       initialVideoId: widget.videosActionApi.toString(),
//       flags: YoutubePlayerFlags(
//         autoPlay: true,
//         mute: false,
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: MyColors.myAmber,
//       ),
//       body: Container(
//         child: YoutubePlayer(
//           controller: _controller,
//           showVideoProgressIndicator: true,
//           onReady: () {
//             print('Player is ready.');
//           },
//         ),
//       ),
//     );
//   }
// }
