import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:story_spark/common/util/assets_icon_helper.dart';
import 'package:story_spark/core/config/theme/app_theme.dart';
import 'package:story_spark/core/uikit/spacing.dart';
import 'package:story_spark/core/uikit/widget/button/button_widget.dart';
import 'package:story_spark/core/uikit/widget/text_form_field/text_form_field_widget.dart';
import 'package:story_spark/features/auth/domain/entities/sign_in_response_entity.dart';
import 'package:story_spark/features/auth/presentation/manager/sign_manager/sign_cubit.dart';
import 'package:story_spark/features/auth/presentation/manager/sign_manager/sign_state.dart';
import 'package:story_spark/features/auth/presentation/manager/sign_up_manager/sign_up_cubit.dart';
import 'package:story_spark/features/auth/presentation/manager/sign_up_manager/sign_up_or_in_state.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  SignInResponseEntity? signInResponseEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: MediaQuery.of(context).size.width * 0.5,
          leading: Text(
            "Story Spark",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorWhite),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Profile',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Theme.of(context).colorWhite, fontWeight: FontWeight.w200),
                ),
                subtitle: BlocBuilder<SignCubit, SignState>(
                  buildWhen: (previous, current) {
                    return current.whenOrNull(signInSuccess: (_) => true) ?? false;
                  },
                  builder: (context, state) {
                    return state.whenOrNull(signInSuccess: (data) {
                          return Text(
                            "Welcome ${data?.name ?? data?.email ?? ''}",
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorWhite, fontWeight: FontWeight.w200),
                          );
                        }) ??
                        Text(
                          "You don't have account",
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorWhite, fontWeight: FontWeight.w200),
                        );
                  },
                ),
              ),
              Space.h16,
              BlocBuilder<SignUpOrInCubit, SignUpOrInState>(
                builder: (context, state) {
                  return state.whenOrNull(signIn: () {
                        return Expanded(
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Theme.of(context).colorWhite),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Space.h16,
                                        Center(
                                          child: Text(
                                            "Signup",
                                            style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorTwo),
                                          ),
                                        ),
                                        Space.h16,
                                        TextFormFieldWidget(
                                          label: "Mail",
                                          controller: emailController,
                                        ),
                                        Space.h8,
                                        TextFormFieldWidget(
                                          obscureText: true,
                                          label: "Password",
                                          controller: passwordController,
                                        ),
                                        Space.h8,
                                        const Spacer(),
                                      ],
                                    ),
                                  ),
                                  Space.h16,
                                  BlocConsumer<SignCubit, SignState>(
                                    listenWhen: (previous, current) {
                                      return current.whenOrNull(signInLoading: () => true, signInSuccess: (_) => true, error: (_) => true) ?? false;
                                    },
                                    listener: (context, state) {
                                      state.whenOrNull(error: (message) {
                                        Fluttertoast.showToast(
                                          msg: message ?? '',
                                          toastLength: Toast.LENGTH_LONG,
                                          timeInSecForIosWeb: 3,
                                          backgroundColor: Theme.of(context).softRed,
                                          textColor: Theme.of(context).colorBlack,
                                          fontSize: 16.0,
                                        );
                                      }, signInSuccess: (data) {
                                        Fluttertoast.showToast(
                                          msg: "Welcome back!",
                                          toastLength: Toast.LENGTH_LONG,
                                          timeInSecForIosWeb: 3,
                                          backgroundColor: Theme.of(context).softGreen,
                                          textColor: Theme.of(context).colorBlack,
                                          fontSize: 16.0,
                                        );
                                        signInResponseEntity = data;
                                        context.read<SignUpOrInCubit>().goToProfile();
                                      });
                                    },
                                    buildWhen: (previous, current) {
                                      return current.whenOrNull(signInLoading: () => true, signInSuccess: (_) => true, error: (_) => true) ?? false;
                                    },
                                    builder: (context, state) {
                                      return state.whenOrNull(signInLoading: () {
                                            return ButtonWidget(
                                              loading: true,
                                              onTap: () {},
                                              title: "Login",
                                              fit: ButtonFit.fitWidth,
                                            );
                                          }) ??
                                          ButtonWidget(
                                            onTap: () {
                                              context.read<SignCubit>().signIn(emailController.text, passwordController.text);
                                            },
                                            title: "Login",
                                            fit: ButtonFit.fitWidth,
                                          );
                                    },
                                  ),
                                  ButtonWidget(
                                    titleStyle: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorFive, fontWeight: FontWeight.w400),
                                    background: Theme.of(context).colorSix,
                                    childColor: Theme.of(context).colorFive,
                                    childLeft: SvgPicture.asset(
                                      AssetsIconHelper.google,
                                      colorFilter: ColorFilter.mode(Theme.of(context).colorFive, BlendMode.srcIn),
                                    ),
                                    onTap: () {},
                                    title: "Login with google",
                                    fit: ButtonFit.fitWidth,
                                  ),
                                  ButtonWidget(
                                    titleStyle: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorFive, fontWeight: FontWeight.w400),
                                    background: Theme.of(context).colorSix,
                                    childColor: Theme.of(context).colorFive,
                                    childLeft: SvgPicture.asset(
                                      AssetsIconHelper.apple,
                                      colorFilter: ColorFilter.mode(Theme.of(context).colorFive, BlendMode.srcIn),
                                    ),
                                    onTap: () {},
                                    title: "Login with Apple id",
                                    fit: ButtonFit.fitWidth,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: Row(
                                      children: [
                                        Text(
                                          "Don't have an account?",
                                          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorTwo),
                                        ),
                                        Expanded(
                                          child: ButtonWidget(
                                            onTap: () {
                                              context.read<SignUpOrInCubit>().goToSigUp();
                                            },
                                            title: "signup",
                                            fit: ButtonFit.fitWidth,
                                            buttonType: ButtonType.link,
                                          ),
                                        ),
                                        const Spacer()
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }, signUp: () {
                        return Expanded(
                          child: Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Theme.of(context).colorWhite),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Space.h16,
                                          Center(
                                            child: Text(
                                              "Signup",
                                              style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorTwo),
                                            ),
                                          ),
                                          Space.h16,
                                          TextFormFieldWidget(
                                            label: "User name",
                                            controller: usernameController,
                                          ),
                                          Space.h8,
                                          TextFormFieldWidget(
                                            label: "Mail",
                                            controller: emailController,
                                          ),
                                          Space.h8,
                                          TextFormFieldWidget(
                                            obscureText: true,
                                            label: "Password",
                                            controller: passwordController,
                                          ),
                                          Space.h8,
                                          TextFormFieldWidget(
                                            obscureText: true,
                                            label: "Confirm password",
                                            controller: confirmPasswordController,
                                          ),
                                          Space.h8,
                                          SizedBox(
                                            height: 40,
                                            child: Row(
                                              children: [
                                                Checkbox(value: true, onChanged: (value) {}),
                                                Expanded(
                                                  child: Text(
                                                    "i accept the terms of service & Privacy policy",
                                                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorTwo),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Space.h8,
                                        ],
                                      ),
                                    ),
                                  ),
                                  Space.h16,
                                  BlocConsumer<SignCubit, SignState>(
                                    listenWhen: (previous, current) {
                                      return current.whenOrNull(signUpLoading: () => true, signUpSuccess: () => true, error: (_) => true) ?? false;
                                    },
                                    listener: (context, state) {
                                      state.whenOrNull(error: (message) {
                                        Fluttertoast.showToast(
                                          msg: message ?? '',
                                          toastLength: Toast.LENGTH_LONG,
                                          timeInSecForIosWeb: 3,
                                          backgroundColor: Theme.of(context).softRed,
                                          textColor: Theme.of(context).colorBlack,
                                          fontSize: 16.0,
                                        );
                                      }, signUpSuccess: () {
                                        Fluttertoast.showToast(
                                          msg: "Please cheek your email and verify your account!",
                                          toastLength: Toast.LENGTH_LONG,
                                          timeInSecForIosWeb: 3,
                                          backgroundColor: Theme.of(context).softGreen,
                                          textColor: Theme.of(context).colorBlack,
                                          fontSize: 16.0,
                                        );
                                        context.read<SignUpOrInCubit>().goToSigIn();
                                      });
                                    },
                                    buildWhen: (previous, current) {
                                      return current.whenOrNull(signUpLoading: () => true, signUpSuccess: () => true, error: (_) => true) ?? false;
                                    },
                                    builder: (context, state) {
                                      return state.whenOrNull(signUpLoading: () {
                                            return ButtonWidget(
                                              loading: true,
                                              onTap: () {},
                                              title: "Sign Up",
                                              fit: ButtonFit.fitWidth,
                                            );
                                          }) ??
                                          ButtonWidget(
                                            onTap: () {
                                              context.read<SignCubit>().signUp(emailController.text, passwordController.text, confirmPasswordController.text, usernameController.text);
                                            },
                                            title: "Sign Up",
                                            fit: ButtonFit.fitWidth,
                                          );
                                    },
                                  ),
                                  ButtonWidget(
                                    titleStyle: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorFive, fontWeight: FontWeight.w400),
                                    background: Theme.of(context).colorSix,
                                    childColor: Theme.of(context).colorFive,
                                    childLeft: SvgPicture.asset(
                                      AssetsIconHelper.google,
                                      colorFilter: ColorFilter.mode(Theme.of(context).colorFive, BlendMode.srcIn),
                                    ),
                                    onTap: () {},
                                    title: "Sign in with google",
                                    fit: ButtonFit.fitWidth,
                                  ),
                                  ButtonWidget(
                                    titleStyle: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorFive, fontWeight: FontWeight.w400),
                                    background: Theme.of(context).colorSix,
                                    childColor: Theme.of(context).colorFive,
                                    childLeft: SvgPicture.asset(
                                      AssetsIconHelper.apple,
                                      colorFilter: ColorFilter.mode(Theme.of(context).colorFive, BlendMode.srcIn),
                                    ),
                                    onTap: () {},
                                    title: "Sign in with Apple id",
                                    fit: ButtonFit.fitWidth,
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: Row(
                                      children: [
                                        Text(
                                          "Don't have an account?",
                                          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorTwo),
                                        ),
                                        Expanded(
                                          child: ButtonWidget(
                                            onTap: () {
                                              context.read<SignUpOrInCubit>().goToSigIn();
                                            },
                                            title: "signup",
                                            fit: ButtonFit.fitWidth,
                                            buttonType: ButtonType.link,
                                          ),
                                        ),
                                        const Spacer()
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }, profile: () {
                        return Expanded(
                          child: Container(
                            width: double.maxFinite,
                            height: double.maxFinite,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Theme.of(context).colorWhite),
                          ),
                        );
                      }) ??
                      const SizedBox();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
