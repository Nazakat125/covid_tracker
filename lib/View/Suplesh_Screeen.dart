import 'dart:async';

import 'package:covid_tracker/View/WorldStatus.dart';
import 'package:covid_tracker/Widgets/CustomSizeBox.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Suplesh_Screen extends StatefulWidget {
  const Suplesh_Screen({super.key});

  @override
  State<Suplesh_Screen> createState() => _Suplesh_ScreenState();
}

class _Suplesh_ScreenState extends State<Suplesh_Screen>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: Duration(seconds: 3), vsync: this)
        ..repeat();

  void dispose (){
    super.dispose();
  }

  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 5),
      () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WorldStatus(),
          )),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: _controller,
            child: Container(
              height: 200.h,
              width: 200.w,
              child: Center(
                child: Image.asset('assets/virus.png'),
              ),
            ),
            builder: (context, child) {
              return Transform.rotate(
                angle: _controller.value * 2.0 * math.pi,
                child: child,
              );
            },
          ),
          CustomSizeBox(
            height: 20.h,
          ),
          Center(
            child: Text(
              'Covid-19\nTraker App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
