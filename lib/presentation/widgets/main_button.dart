import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  int? paddingSymmetric;
  Color? color;

  MainButton({
    super.key,
    required this.onTap,
    required this.text,
    this.paddingSymmetric = 40,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        height: 60.h,
        width: double.infinity,
        color: color,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    ).paddingSymmetric(horizontal: paddingSymmetric!.w);
  }
}
