import 'package:album_generator/di/locator.dart';
import 'package:album_generator/domain/enitites/album/album.dart';
import 'package:album_generator/navigation/auto_router.gr.dart';
import 'package:album_generator/presentation/pages/album_page/bloc/album_bloc.dart';
import 'package:album_generator/presentation/pages/album_page/widgets/review_card.dart';
import 'package:album_generator/utils/app_icons.dart';
import 'package:album_generator/utils/app_text_styles.dart';
import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class AlbumPage extends StatelessWidget {
  const AlbumPage({super.key, required this.album});

  final Album album;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AlbumBloc>()..add(AlbumEvent.started(album: album)),
      child: BlocSideEffectConsumer<AlbumBloc, AlbumBloc, AlbumState,
          AlbumCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            error: (error) {
              final snackBar = SnackBar(
                content: Text(error),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          );
        },
        builder: (context, state) {
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
                  ).paddingSymmetric(horizontal: 34.w),
                  10.h.heightBox,
                  Text(
                    album.artist,
                    style: AppTextStyles.underTitle,
                  ).paddingSymmetric(horizontal: 34.w),
                  Text(
                    album.released,
                    style: AppTextStyles.underTitle,
                  ),
                  20.h.heightBox,
                  Text(
                    '★ ${album.rating!.toStringAsFixed(2)}',
                    style: AppTextStyles.underTitle.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '${album.reviewCount.toString()} reviews',
                    style: AppTextStyles.underTitle.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  20.h.heightBox,
                  album.description != null
                      ? Text(
                          album.description!,
                          style: AppTextStyles.underTitle,
                        ).paddingSymmetric(horizontal: 34.w)
                      : Text(
                          '${album.name} is a fantastic album by ${album.artist}.',
                          style: AppTextStyles.underTitle,
                        ).paddingSymmetric(horizontal: 34.w),
                  20.h.heightBox,
                  const Divider(
                    thickness: 0.3,
                    color: Colors.black,
                  ).paddingSymmetric(horizontal: 34.w),
                  20.h.heightBox,
                  state is Loaded
                      ? state.reviews!.isNotEmpty
                          ? Column(
                              children: [
                                Text(
                                  'Latest reviews:',
                                  style: AppTextStyles.underTitle.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                30.heightBox,
                                CustomScrollView(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  slivers: [
                                    SliverPadding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8.h),
                                      sliver: SliverList.builder(
                                        itemCount: state.reviews!.length,
                                        itemBuilder: (context, index) {
                                          final review = state.reviews![index];
                                          return FutureBuilder(
                                            future: context
                                                .read<AlbumBloc>()
                                                .getAuthor(review.authorId),
                                            builder: (context, snapshot) {
                                              if (snapshot.hasData) {
                                                return Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.w),
                                                  child: ReviewCard(
                                                    totalCount:
                                                        state.reviews!.length,
                                                    index:
                                                        state.reviews!.length -
                                                            index,
                                                    author:
                                                        snapshot.data!.username,
                                                    rating: review.rating
                                                        .toString(),
                                                    description:
                                                        review.description,
                                                    timeStamp: review.timeStamp,
                                                  ),
                                                );
                                              } else {
                                                return const SizedBox.shrink();
                                              }
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : Text(
                              'No reviews on this album yet',
                              style: AppTextStyles.underTitle.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ).paddingSymmetric(horizontal: 34.w)
                      : const CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                  20.heightBox,
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
