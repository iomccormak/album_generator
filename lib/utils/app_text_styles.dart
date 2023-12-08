import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyles {
  static final title = TextStyle(
    color: Colors.black,
    fontSize: 40.sp,
    fontWeight: FontWeight.w700,
  );

  static final underTitle = TextStyle(
    color: Colors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.w300,
  );
}
