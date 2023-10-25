import 'package:flutter/material.dart';
class CustomSizeBox extends StatelessWidget {
  CustomSizeBox({super.key,this.height,this.width});
  double? height;
  double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,width: width,
    );
  }
}
