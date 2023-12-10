import 'package:album_generator/di/locator.dart';
import 'package:album_generator/navigation/auto_router.gr.dart';
import 'package:album_generator/presentation/pages/main_page/bloc/main_bloc.dart';
import 'package:album_generator/presentation/widgets/main_button.dart';
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

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => getIt<MainBloc>()..add(const Started()),
      child: BlocSideEffectConsumer<MainBloc, MainBloc, MainState, MainCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            navToProfile: () {
              context.router.push(const ProfileRoute());
            },
            navToSettings: () {
              context.router.push(const InfoRoute());
            },
            navToNext: () {},
            error: () {
              const snackBar = SnackBar(
                content: Text('Error on main page'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          );
        },
        builder: (context, state) {
          return state is Loaded
              ? Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    actions: [
                      IconButton(
                        icon: const Icon(
                          Icons.info_outline_rounded,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          context.router.push(const InfoRoute());
                        },
                      ),
                    ],
                    leading: InkWell(
                      onTap: () {
                        context.router.push(const ProfileRoute());
                      },
                      child: Padding(
                        padding: EdgeInsets.all(16.r),
                        child: const Icon(
                          Icons.account_circle_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      20.h.heightBox,
                      Container(
                        width: 300.w,
                        height: 300.h,
                        decoration: state.album.cover == null
                            ? BoxDecoration(
                                border: Border.all(
                                  width: 1,
                                  color:
                                      const Color.fromARGB(255, 204, 204, 204),
                                ),
                              )
                            : null,
                        alignment: Alignment.center,
                        child: state.album.cover != null
                            ? CachedNetworkImage(
                                imageUrl: state.album.cover!,
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
                      20.h.heightBox,
                      Text(
                        state.album.name,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.title,
                      ),
                      10.h.heightBox,
                      Text(
                        state.album.artist,
                        style: AppTextStyles.underTitle,
                      ),
                      Text(
                        state.album.released,
                        style: AppTextStyles.underTitle,
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: MainButton(
                            onTap: () {
                              context.router.push(RateAlbumRoute(
                                album: state.album,
                                user: state.currentUser,
                              ));
                            },
                            text: 'Rate',
                            paddingSymmetric: 30,
                          ),
                        ).paddingOnly(bottom: 30.h),
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 34.w))
              : const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                    ),
                  ),
                );
        },
      ),
    );
  }
}
