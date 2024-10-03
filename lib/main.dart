import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/business_logic/cubit_pages/cubit/pages_cubit.dart';
import 'package:movies_app/routing/app_router.dart';

void main() {
  runApp(MyApp(
    appRouter: AppRouter(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.appRouter,
  });
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (BuildContext build, child) {
          return BlocProvider(
            create: (context) => PagesCubit(),
            child: MaterialApp(
              theme: ThemeData(primaryColor: const Color(0xff1F1F1F)),
              debugShowCheckedModeBanner: false,
              onGenerateRoute: appRouter.generateRoute,
              // initialRoute: ,
            ),
          );
        });
  }
}
