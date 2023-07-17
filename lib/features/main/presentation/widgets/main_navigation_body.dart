import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_spark/core/di/base/di_setup.dart';
import 'package:story_spark/features/auth/presentation/manager/sign_manager/sign_cubit.dart';
import 'package:story_spark/features/auth/presentation/manager/sign_up_manager/sign_up_cubit.dart';
import 'package:story_spark/features/auth/presentation/pages/sign_in.dart';
import 'package:story_spark/features/library/presentation/pages/library_page.dart';

enum MainNavigationItem { profile, create, library, home }

class MainNavigationBody extends StatelessWidget {
  MainNavigationBody.profile({super.key}) {
    _mainNavigationItem = MainNavigationItem.profile;
  }

  MainNavigationBody.create({super.key}) {
    _mainNavigationItem = MainNavigationItem.create;
  }

  MainNavigationBody.library({super.key}) {
    _mainNavigationItem = MainNavigationItem.library;
  }

  MainNavigationBody.home({super.key}) {
    _mainNavigationItem = MainNavigationItem.home;
  }

  late final MainNavigationItem _mainNavigationItem;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            final cubit = getIt<SignUpOrInCubit>();
            cubit.goToSigIn();
            return cubit;
          },
        ),
        BlocProvider(
          create: (context) {
            final cubit = getIt<SignCubit>();
            return cubit;
          },
        ),
      ],
      child: switch (_mainNavigationItem) {
        MainNavigationItem.profile => const SignInPage(),
        MainNavigationItem.create => SizedBox(),
        MainNavigationItem.library => LibraryPage(),
        MainNavigationItem.home => SizedBox(),
      },
    );
  }
}
