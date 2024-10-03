import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:movies_app/core/business_logic/cubit/movies_cubit.dart';
import 'package:movies_app/core/constants/list_pages.dart';
import 'package:movies_app/core/constants/my_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // late List<MoviesApi> listMovies;

  // @override
  // void initState() {
  //   super.initState();
  //   // BlocProvider.of<MoviesCubit>(context).getMoviesCubit();
  // }

  // Widget buildMoviesList() {
  //   return GridView.builder(
  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //           crossAxisCount: 2,
  //           childAspectRatio: 1 / 1.0,
  //           crossAxisSpacing: 0,
  //           mainAxisExtent: 180,
  //           mainAxisSpacing: 20),
  //       shrinkWrap: true,
  //       physics: ClampingScrollPhysics(),
  //       padding: EdgeInsets.zero,
  //       itemCount: listMovies.length,
  //       itemBuilder: (context, index) {
  //         return DisplayMovies(moviesApi: listMovies[index]);
  //       });
  // }

  // Widget buildBlocWidget() {
  //   return BlocBuilder<MoviesCubit, MoviesState>(builder: (context, state) {
  //     if (state is Loaded) {
  //       listMovies = (state).moviesList;
  //       return buildLoadedListWidget();
  //     } else {
  //       return buildLoadingCircularProgressIndicator();
  //     }
  //   });
  // }

  // Widget buildLoadingCircularProgressIndicator() {
  //   return const Center(
  //     child: CircularProgressIndicator(
  //         // color: MyColors.myBlack,
  //         ),
  //   );
  // }

  // Widget buildImagesCarouselSlider() {
  //   // final mm = listMovies.length;
  //   return CarouselSlider.builder(
  //       itemCount: listMovies.length,
  //       itemBuilder: (context, index, moviesIndex) {

  //         return CarouselSliderImages(
  //           moviesApi: listMovies[index],
  //         );
  //       },
  //       options: CarouselOptions(
  //           autoPlay: true,
  //           enlargeCenterPage: true,
  //           aspectRatio: 2.1,
  //           autoPlayInterval: Duration(seconds: 3)));
  // }

  // Widget buildLoadedListWidget() {
  //   return SingleChildScrollView(
  //     child: Container(
  //       // color: Theme.of(context).primaryColor,
  //       child: Column(
  //         children: [
  //           // CarouselSliderImages(index: listMovies.length)
  //           // buildImagesCarouselSlider(),
  //           // buildImagesCarouselSlider(
  //           //     index: listMovies.length, cccc: listMovies),
  //           // CarouselSliderImages(
  //           //   moviesApi: listMovies,
  //           // ),
  //           SizedBox(
  //             height: 10.h,
  //           ),
  //           // Container(
  //           //   decoration: BoxDecoration(
  //           //     color: Colors.amber,
  //           //     borderRadius: BorderRadius.circular(20)
  //           //   //  boxShadow:[BoxShadow(color: )],
  //           //   ),
  //           //   width: 100,
  //           //   height: 100,
  //           // )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // var icons = [
  //   Icons.home,
  //   Icons.search,
  //   Icons.favorite_border,
  //   Icons.person_outline_rounded,
  // ];

  int number = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<MoviesCubit, MoviesState>(
        builder: (context, state) {
          // number=(state).
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              surfaceTintColor: Colors.transparent,
              leading: Container(
                padding: EdgeInsets.only(left: 11.w),
                child: Image.asset(
                  "assets/images/slogen.png",
                  // scale: 0
                ),
              ),
              title: Text(
                "MovieTime",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.transparent,
            ),
            backgroundColor: Theme.of(context).primaryColor,
            bottomNavigationBar: Padding(
              padding: EdgeInsets.only(bottom: 8.h, left: 8.w, right: 8.w),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BottomNavigationBar(
                    selectedFontSize: 11.h,
                    type: BottomNavigationBarType.fixed,
                    selectedItemColor: MyColors.myAmber,
                    elevation: 10,
                    // backgroundColor: ,
                    currentIndex: number,
                    onTap: (value) {
                      number = value;
                      BlocProvider.of<MoviesCubit>(context)
                          .currentIndex(index: number);

                      // setState(() {
                      //   number = value;
                      // });
                    },
                    items: [
                      BottomNavigationBarItem(
                          label: "Home",
                          icon: Image.asset(
                            "assets/images/Squircle.png",
                            color: number == 0
                                ? MyColors.myAmber
                                : MyColors.myGrey,
                            height: 16.h,
                          )),
                      BottomNavigationBarItem(
                          label: "Search",
                          icon: Image.asset(
                            "assets/images/Search.png",
                            color: number == 1
                                ? MyColors.myAmber
                                : MyColors.myGrey,
                            height: 16.h,
                          )),
                      BottomNavigationBarItem(
                          label: "Favorite",
                          icon: Image.asset(
                            "assets/images/favarates.png",
                            color: number == 2
                                ? MyColors.myAmber
                                : MyColors.myGrey,
                            height: 16.h,
                          )),
                      BottomNavigationBarItem(
                          label: "Profile",
                          icon: Image.asset(
                            "assets/images/Profile.png",
                            height: 16.h,
                            color: number == 3
                                ? MyColors.myAmber
                                : MyColors.myGrey,
                          )),
                    ]),
              ),
            ),
            body: listPage.elementAt(number),
          );
        },
      ),
    );
  }
}
