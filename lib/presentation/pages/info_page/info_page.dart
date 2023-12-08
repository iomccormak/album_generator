import 'package:album_generator/utils/app_text_styles.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          70.h.heightBox,
          Text(
            'Info',
            style: AppTextStyles.title,
          ),
          20.h.heightBox,
          const Divider(
            thickness: 0.3,
            color: Colors.black,
          ),
          10.heightBox,
          Text(
            'Once every weekday (between 3-5 AM GMT) you will get a new album generated.',
            textAlign: TextAlign.left,
            style: AppTextStyles.underTitle,
          ),
          5.h.heightBox,
          Text(
            'You will then be able to rate your previous album.',
            textAlign: TextAlign.left,
            style: AppTextStyles.underTitle,
          ),
          5.h.heightBox,
          RichText(
            text: TextSpan(
              text: 'All albums are taken from the classic book ',
              style: AppTextStyles.underTitle,
              children: [
                TextSpan(
                    text: '1001 Albums You Must Hear Before You Die.',
                    style:
                        AppTextStyles.underTitle.copyWith(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        //launchUrl(Uri.parse(
                            //'https://en.wikipedia.org/wiki/1001_Albums_You_Must_Hear_Before_You_Die'));
                      })
              ],
            ),
          ),
          5.h.heightBox,
          Text(
            'We keep track of your history and make sure you wont get an album you already listened to.',
            textAlign: TextAlign.left,
            style: AppTextStyles.underTitle,
          ),
          20.h.heightBox,
          const Divider(
            thickness: 0.3,
            color: Colors.black,
          ),
          10.heightBox,
          RichText(
            text: TextSpan(
              text: 'Inspired by ',
              style: AppTextStyles.underTitle,
              children: [
                TextSpan(
                    text: '1001albumgenerator.com',
                    style:
                        AppTextStyles.underTitle.copyWith(color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        //await _launchUrl('1001albumgenerator.com');
                      })
              ],
            ),
          ),
        ],
      ).paddingSymmetric(horizontal: 30.w),
    );
  }

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);

    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Exception: can't launch url";
    }
  }
}
