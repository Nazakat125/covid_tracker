import 'package:covid_tracker/Widgets/CustomSizeBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CountryRow extends StatelessWidget {
  CountryRow({super.key, required this.title, required this.value});
  String title;
  String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w800),
              ),
              Text(
                value,
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w800),
              ),
            ],
          ),

          Divider(
            thickness: 1.h,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
