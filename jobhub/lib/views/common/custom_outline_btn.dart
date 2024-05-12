import 'package:flutter/material.dart';
import 'package:jobhub/views/common/app_style.dart';
import 'package:jobhub/views/common/reusable_text.dart';

class CustomOutlineBtn extends StatelessWidget {
  const CustomOutlineBtn({
    super.key,
    this.width,
    this.height,
    this.onTap,
    required this.text,
    required this.color,
    this.color2
  });

  final double? width;
  final double? height;
  final void Function()? onTap;
  final Color color;
  final Color? color2;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color2,
          border: Border.all(
            width: 1,
            color: color
          ),
        ),
        child: Center(
          child: ReusableText(
            text: text,
            style: appstyle(16, color, FontWeight.w600),
          ),
        ),
      ),
    );
  }
}