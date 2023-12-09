import 'package:album_generator/di/locator.dart';
import 'package:album_generator/domain/enitites/album/album.dart';
import 'package:album_generator/navigation/auto_router.gr.dart';
import 'package:album_generator/presentation/pages/rate_album_page/bloc/rate_album_bloc.dart';
import 'package:album_generator/presentation/widgets/app_text_field.dart';
import 'package:album_generator/presentation/widgets/main_button.dart';
import 'package:album_generator/utils/app_icons.dart';
import 'package:album_generator/utils/app_text_styles.dart';
import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class RateAlbumPage extends StatelessWidget {
  const RateAlbumPage({
    super.key,
    required this.album,
  });

  final Album album;

  @override
  Widget build(BuildContext context) {
    TextEditingController descriptionController = TextEditingController();

    return BlocProvider(
      create: (context) => getIt<RateAlbumBloc>(),
      child: BlocSideEffectConsumer<RateAlbumBloc, RateAlbumBloc,
          RateAlbumState, RateAlbumCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            navToNextAlbum: () => context.router.push(const MainRoute()),
            error: (error) {
              final snackBar = SnackBar(
                content: Text(error),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          );
        },
        builder: (context, state) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Scaffold(
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
              body: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  20.h.heightBox,
                  Row(
                    children: [
                      Container(
                        width: 100.w,
                        height: 100.h,
                        decoration: album.cover == null
                            ? BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color:
                                      const Color.fromARGB(255, 204, 204, 204),
                                ),
                              )
                            : BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color:
                                      const Color.fromARGB(255, 222, 222, 222),
                                ),
                              ),
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
                                  color:
                                      const Color.fromARGB(255, 221, 221, 221),
                                ),
                              ),
                      ),
                      20.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 230.w,
                            height: 70.h,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              album.name,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: AppTextStyles.title.copyWith(
                                fontSize: 25.sp,
                              ),
                            ),
                          ),
                          Text(
                            album.artist,
                            style: AppTextStyles.underTitle.copyWith(
                              fontSize: 15.sp,
                            ),
                          ),
                          Text(
                            album.released,
                            style: AppTextStyles.underTitle.copyWith(
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  30.h.heightBox,
                  const Divider(
                    thickness: 0.3,
                    color: Colors.black,
                  ),
                  30.h.heightBox,
                  Text(
                    'Rate this album',
                    style: AppTextStyles.underTitle,
                  ),
                  30.h.heightBox,
                  AppTextField(
                    controller: descriptionController,
                    expanded: true,
                    hintText: 'Write a review (if you want)',
                  ).paddingSymmetric(horizontal: 30.w),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          RatingBar.builder(
                            itemSize: 55.r,
                            glow: false,
                            initialRating: 0,
                            minRating: 0,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.w),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          15.h.heightBox,
                          MainButton(
                            onTap: () {},
                            text: 'Rate',
                            paddingSymmetric: 30,
                            color: Colors.green,
                          ),
                          10.heightBox,
                          InkWell(
                            onTap: () {},
                            child: Ink(
                              width: 110.w,
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Did not listen',
                                  style: AppTextStyles.underTitle.copyWith(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ).paddingOnly(bottom: 30.h),
                  ),
                ],
              ).paddingSymmetric(horizontal: 30.w),
            ),
          );
        },
      ),
    );
  }
}
