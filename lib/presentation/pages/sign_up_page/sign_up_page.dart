import 'package:album_generator/di/locator.dart';
import 'package:album_generator/navigation/auto_router.gr.dart';
import 'package:album_generator/presentation/pages/sign_up_page/bloc/sign_up_bloc.dart';
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

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    return BlocProvider(
      create: (context) => getIt<SignUpBloc>(),
      child: BlocSideEffectConsumer<SignUpBloc, SignUpBloc, SignUpState,
          SignUpCommand>(
        listener: (context, sideEffect) {
          sideEffect.when(
            navToHomePage: () => context.router.push(MainRoute()),
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
                            'Sign Up',
                            style: AppTextStyles.title,
                          ),
                          40.h.heightBox,
                          AppTextField(
                            title: 'Name',
                            hintText: 'Enter your name',
                            controller: nameController,
                          ),
                          20.h.heightBox,
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
                          10.h.heightBox,
                          AppTextField(
                            hintText: 'Confirm your password',
                            controller: confirmPasswordController,
                            obscure: true,
                          ),
                          20.h.heightBox,
                          MainButton(
                            onTap: () {
                              context.read<SignUpBloc>().add(
                                    SignUpEvent.signUpClicked(
                                      username: nameController.text,
                                      email: emailController.text,
                                      password: passwordController.text,
                                      confirmPassword:
                                          confirmPasswordController.text,
                                    ),
                                  );
                            },
                            text: 'Sign Up',
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
