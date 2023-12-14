import 'package:album_generator/domain/enitites/album/album.dart';
import 'package:album_generator/navigation/auto_router.gr.dart';
import 'package:album_generator/utils/app_icons.dart';
import 'package:album_generator/utils/app_text_styles.dart';
import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({super.key, required this.album});

  final Album album;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: context.router.pop,
          child: Padding(
            padding: EdgeInsets.all(16.r),
            child: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.grey,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            20.h.heightBox,
            Container(
              width: 300.w,
              height: 300.h,
              decoration: album.cover == null
                  ? BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: const Color.fromARGB(255, 204, 204, 204),
                      ),
                    )
                  : null,
              alignment: Alignment.center,
              child: album.cover != null
                  ? CachedNetworkImage(
                      imageUrl: album.cover!,
                      fit: BoxFit.cover,
                    )
                  : SizedBox(
                      width: 170.w,
                      height: 170.h,
                      child: SvgPicture.asset(
                        AppIcons.albumPlaceholder,
                        color: const Color.fromARGB(255, 221, 221, 221),
                      ),
                    ),
            ),
            20.h.heightBox,
            Text(
              album.name,
              textAlign: TextAlign.center,
              style: AppTextStyles.title,
            ),
            10.h.heightBox,
            Text(
              album.artist,
              style: AppTextStyles.underTitle,
            ),
            Text(
              album.released,
              style: AppTextStyles.underTitle,
            ),
            20.h.heightBox,
            Text(
              '★ ${album.rating.toString()}',
              //'★ 4.21',
              style: AppTextStyles.underTitle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '${album.reviewCount.toString()} reviews',
              //'1.235 reviews',
              style: AppTextStyles.underTitle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            20.h.heightBox,
            album.description != null
                ? Text(
                    album.description!,
                    style: AppTextStyles.underTitle,
                  )
                : Text(
                    '${album.name} is a fantastic album by ${album.artist}.',
                    style: AppTextStyles.underTitle,
                  ),
            20.h.heightBox,
            const Divider(
              thickness: 0.3,
              color: Colors.black,
            ),
            20.h.heightBox,
            Text(
              'Latest reviews:',
              style: AppTextStyles.underTitle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            20.heightBox,
          ],
        ).paddingSymmetric(horizontal: 34.w),
      ),
    );
  }
}
