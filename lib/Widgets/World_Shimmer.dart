import 'package:covid_tracker/Widgets/CustomSizeBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
class World_Shimmer extends StatefulWidget {
  const World_Shimmer({super.key});

  @override
  State<World_Shimmer> createState() => _World_ShimmerState();
}

class _World_ShimmerState extends State<World_Shimmer> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Color.fromARGB(142, 47, 47, 47),
      highlightColor: Colors.white70,
      direction: ShimmerDirection.ltr,
      child: Padding(
        padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Column(
          children: [
            CustomSizeBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                        ),
                        CustomSizeBox(width: 10.w,),
                        Container(
                          height: 10,
                          width: 70,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    CustomSizeBox(height: 10.h,),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                        ),
                        CustomSizeBox(width: 10.w,),
                        Container(
                          height: 10,
                          width: 70,

                          color: Colors.white,
                        ),
                      ],
                    ),
                    CustomSizeBox(height: 10.h,),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                        ),
                        CustomSizeBox(width: 10.w,),
                        Container(
                          height: 10,
                          width: 70,

                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                )
              ],
            ),
            CustomSizeBox(
              height: 50.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 20,
                  width: 100,
                  color: Colors.white,
                ),
                Container(
                  height: 20,
                  width: 70,
                  color: Colors.white,
                ),
              ],
            ),
            CustomSizeBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 20,
                  width: 100,
                  color: Colors.white,
                ),
                Container(
                  height: 20,
                  width: 70,
                  color: Colors.white,
                ),
              ],
            ),
            CustomSizeBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 20,
                  width: 100,
                  color: Colors.white,
                ),
                Container(
                  height: 20,
                  width: 70,
                  color: Colors.white,
                ),
              ],
            ),
            CustomSizeBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 20,
                  width: 100,
                  color: Colors.white,
                ),
                Container(
                  height: 20,
                  width: 70,
                  color: Colors.white,
                ),
              ],
            ),
            CustomSizeBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 20,
                  width: 100,
                  color: Colors.white,
                ),
                Container(
                  height: 20,
                  width: 70,
                  color: Colors.white,
                ),
              ],
            ),
            CustomSizeBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 20,
                  width: 100,
                  color: Colors.white,
                ),
                Container(
                  height: 20,
                  width: 70,
                  color: Colors.white,
                ),
              ],
            ),
            CustomSizeBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 20,
                  width: 100,
                  color: Colors.white,
                ),
                Container(
                  height: 20,
                  width: 70,
                  color: Colors.white,
                ),
              ],
            ),
            CustomSizeBox(height: 30,),

            Container(height: 40.h,width: double.infinity,decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.r),
              color: Colors.white,
            ),)



          ],
        ),
      ),
    );
  }
}
