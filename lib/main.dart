import 'package:covid_tracker/View/Suplesh_Screeen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Covid-19 Traker',
          theme: ThemeData(
              primarySwatch:Colors.blue,
              brightness:Brightness.dark
          ),
          home: Suplesh_Screen(),
        );
      },
    );
  }
}
