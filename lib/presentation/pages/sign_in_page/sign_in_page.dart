import 'package:album_generator/di/locator.dart';
import 'package:album_generator/navigation/auto_router.gr.dart';
import 'package:album_generator/presentation/pages/sign_in_page/bloc/sign_in_bloc.dart';
import 'package:album_generator/presentation/widgets/app_text_field.dart';
import 'package:album_generator/presentation/widgets/main_button.dart';
import 'package:album_generator/utils/app_text_styles.dart';
import 'package:album_generator/utils/text_formatter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:side_effect_bloc/side_effect_bloc.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return BlocProvider(
      create: (context) => getIt<SignInBloc>(),
      child: BlocSideEffectConsumer<SignInBloc, SignInBloc, SignInState,
          SignInCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            navToHomePage: () => context.router.push(const MainRoute()),
            validator: () {
              const snackBar = SnackBar(
                content: Text('Enter valid values'),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            error: (error) {
              final snackBar = SnackBar(
                content: Text(error.formatFirebaseError()),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          );
        },
        builder: (context, state) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Scaffold(
              body: state is Initial
                  ? SingleChildScrollView(
                      child: Center(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          80.h.heightBox,
                          Text(
                            'Sign In',
                            style: AppTextStyles.title,
                          ),
                          40.h.heightBox,
                          AppTextField(
                            title: 'Email',
                            hintText: 'Enter your email',
                            controller: emailController,
                          ),
                          20.h.heightBox,
                          AppTextField(
                            title: 'Password',
                            hintText: 'Enter your password',
                            controller: passwordController,
                            obscure: true,
                          ),
                          20.h.heightBox,
                          MainButton(
                            onTap: () {
                              context.read<SignInBloc>().add(
                                    SignInEvent.signInClicked(
                                      email: emailController.text,
                                      password: passwordController.text,
                                    ),
                                  );
                            },
                            text: 'Sign In',
                            paddingSymmetric: 0,
                          ),
                        ],
                      ).paddingSymmetric(horizontal: 60.w)),
                    )
                  : const CircularProgressIndicator(
                      color: Colors.blue,
                    ).toCenter(),
            ),
          );
        },
      ),
    );
  }
}
