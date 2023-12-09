import 'package:album_generator/di/locator.dart';
import 'package:album_generator/domain/enitites/user/user.dart';
import 'package:album_generator/navigation/auto_router.gr.dart';
import 'package:album_generator/presentation/pages/profile_page/bloc/profile_bloc.dart';
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

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProfileBloc>()..add(const ProfileEvent.started()),
      child: BlocSideEffectConsumer<ProfileBloc, ProfileBloc, ProfileState,
          ProfileCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            navToStartPage: () => context.router.push(const StartRoute()),
            error: () {
              const snackBar = SnackBar(
                content: Text('Profile error'),
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
                    actions: [
                      IconButton(
                        icon: const Icon(
                          Icons.logout_outlined,
                          color: Colors.grey,
                        ),
                        onPressed: () =>
                            context.read<ProfileBloc>()..add(const SignOut()),
                      ),
                    ],
                  ),
                  body: Center(
                    child: Column(
                      children: [
                        20.h.heightBox,
                        Container(
                          width: 300.w,
                          height: 300.h,
                          decoration: state.user.avatar == null
                              ? BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: const Color.fromARGB(
                                        255, 204, 204, 204),
                                  ),
                                )
                              : BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: const Color.fromARGB(
                                        255, 222, 222, 222),
                                  ),
                                ),
                          alignment: Alignment.center,
                          child: state.user.avatar != null
                              ? CachedNetworkImage(
                                  imageUrl: state.user.avatar!,
                                  fit: BoxFit.cover,
                                )
                              : SizedBox(
                                  width: 170.w,
                                  height: 170.h,
                                  child: SvgPicture.asset(
                                    AppIcons.albumPlaceholder,
                                    color: const Color.fromARGB(
                                        255, 221, 221, 221),
                                  ),
                                ),
                        ),
                        20.h.heightBox,
                        Text(
                          state.user.username,
                          style: AppTextStyles.title,
                        ),
                        10.h.heightBox,
                        Text(
                          state.user.email,
                          style: AppTextStyles.underTitle,
                        ),
                      ],
                    ),
                  ),
                )
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
