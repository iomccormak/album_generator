import 'package:album_generator/navigation/auto_router.gr.dart';
import 'package:album_generator/presentation/widgets/main_button.dart';
import 'package:album_generator/utils/app_text_styles.dart';
import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'reg page',
              style: AppTextStyles.title,
            ),
            20.h.heightBox,
            MainButton(
              onTap: () => context.router.push(MainRoute()),
              text: 'Registrate',
            ),
          ],
        ),
      ),
    );
  }
}
