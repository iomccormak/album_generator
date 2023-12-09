import 'package:album_generator/navigation/auto_router.gr.dart';
import 'package:album_generator/presentation/widgets/main_button.dart';
import 'package:album_generator/utils/app_icons.dart';
import 'package:album_generator/utils/app_text_styles.dart';
import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 110.w,
              height: 110.h,
              child: SvgPicture.asset(
                AppIcons.albumPlaceholder,
                color: Colors.black,
              ),
            ),
            30.h.heightBox,
            Text(
              '1001 Albums You Must Hear Before You Die',
              textAlign: TextAlign.center,
              style: AppTextStyles.title,
            ),
            30.h.heightBox,
            Text(
              'A book with 1001 albums chosen by a panel of music critics to be the most important and influential in popular music.',
              textAlign: TextAlign.center,
              style: AppTextStyles.underTitle,
            ),
            30.h.heightBox,
            Text(
              'This app will help you listen to them all.',
              style: AppTextStyles.underTitle,
            ),
            Text(
              'One album a day.',
              style: AppTextStyles.underTitle,
            ),
            30.h.heightBox,
            MainButton(
              onTap: () => context.router.push(const SignUpRoute()),
              text: 'Get started',
            ),
            15.h.heightBox,
            InkWell(
              onTap: () {
                context.router.push(const SignInRoute());
              },
              child: Ink(
                height: 20.h,
                width: 220.w,
                child: Align(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: AppTextStyles.underTitle.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: 'Log in',
                          style: AppTextStyles.underTitle.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 20.w),
      ),
    );
  }
}
