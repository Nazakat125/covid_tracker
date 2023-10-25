import 'package:covid_tracker/Widgets/CustomSizeBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
class Country_Shimmer extends StatefulWidget {
  const Country_Shimmer({super.key});

  @override
  State<Country_Shimmer> createState() => _Country_ShimmerState();
}

class _Country_ShimmerState extends State<Country_Shimmer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Column(
          children: [
        Expanded(
        child: ListView.builder(
        itemCount: 10,
          itemBuilder: (context, index) {
            return Shimmer.fromColors(
              baseColor: Color.fromARGB(142, 47, 47, 47),
              highlightColor: Colors.white70,
              direction: ShimmerDirection.ltr,
              child: Padding(
                padding:  EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                    ),
                    CustomSizeBox(width: 30,),

             Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                     height: 15.h,
                     width: 100.w,
                     color: Colors.white,
                   ),
                   CustomSizeBox(height: 10,),
                   Container(
                     height: 10.h,
                     width: 150.w,
                     color: Colors.white,
                   ),

                 ],
             )
                  ],
                ),
              ),);
          },),
    )
          ],
        ),
      ),
    );
  }
}
