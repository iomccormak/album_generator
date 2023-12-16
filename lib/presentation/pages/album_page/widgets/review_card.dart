import 'package:album_generator/utils/app_text_styles.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ReviewCard extends StatelessWidget {
  final int totalCount;
  final int index;
  final String author;
  final String rating;
  final String? description;
  final DateTime timeStamp;
  final VoidCallback? onTap;

  const ReviewCard({
    super.key,
    required this.author,
    required this.rating,
    this.description,
    required this.timeStamp,
    required this.totalCount,
    required this.index,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        color: totalCount.isOdd
            ? index.isOdd
                ? const Color.fromARGB(255, 230, 230, 230)
                : Colors.white
            : index.isOdd
                ? Colors.white
                : const Color.fromARGB(255, 230, 230, 230),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.w.widthBox,
            SizedBox(
              width: 285.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    author,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.underTitle.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  description!.isNotEmpty
                      ? Column(
                          children: [
                            10.h.heightBox,
                            Text(
                              description!,
                              style: AppTextStyles.underTitle.copyWith(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        )
                      : const SizedBox.shrink(),
                  10.h.heightBox,
                  Text(
                    DateFormat('dd MMM yyyy HH:mm').format(timeStamp),
                    style: AppTextStyles.underTitle.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  10.h.heightBox,
                ],
              ).paddingOnly(top: 10.h),
            ),
            SizedBox(
              width: 60.w,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  rating,
                  style: AppTextStyles.underTitle.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ).paddingOnly(top: 10.h),
          ],
        ),
      ),
    );
  }
}
