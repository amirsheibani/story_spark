import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:story_spark/core/config/theme/app_theme.dart';
import 'package:story_spark/features/account/domain/entities/user_entity.dart';
import 'package:story_spark/features/main/presentation/manager/navigion_body_manager/button_navigation_cubit.dart';
import 'package:story_spark/features/main/presentation/manager/navigion_body_manager/button_navigation_state.dart';
import 'package:story_spark/features/main/presentation/widgets/main_navigation_body.dart';
import 'package:story_spark/features/main/presentation/widgets/main_navigation_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, this.userEntity});

  final UserEntity? userEntity;

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MainPage oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorWhite,
      child: SafeArea(
        top: false,
        child: Scaffold(
          key: _key,
          body: BlocBuilder<ButtonNavigationCubit, ButtonNavigationState>(
            builder: (context, state) =>
                state.whenOrNull(
                  profile: () => MainNavigationBody.profile(),
                  create: () => MainNavigationBody.create(),
                  library: () => MainNavigationBody.library(),
                  home: () => MainNavigationBody.home(),
                ) ??
                const SizedBox(),
          ),
          bottomNavigationBar: BlocBuilder<ButtonNavigationCubit, ButtonNavigationState>(
            builder: (context, state) =>
                state.whenOrNull(profile: () {
                  return MinNavigationWidget(
                    mainNavigationItem: MainNavigationItem.profile,
                    onChange: (value) {
                      context.read<ButtonNavigationCubit>().goTo(value);
                    },
                  );
                }, create: () {
                  return MinNavigationWidget(
                    mainNavigationItem: MainNavigationItem.create,
                    onChange: (value) {
                      context.read<ButtonNavigationCubit>().goTo(value);
                    },
                  );
                }, library: () {
                  return MinNavigationWidget(
                    mainNavigationItem: MainNavigationItem.library,
                    onChange: (value) {
                      context.read<ButtonNavigationCubit>().goTo(value);
                    },
                  );
                }, home: () {
                  return MinNavigationWidget(
                    mainNavigationItem: MainNavigationItem.home,
                    onChange: (value) {
                      context.read<ButtonNavigationCubit>().goTo(value);
                    },
                  );
                }) ??
                const SizedBox(),
          ),
        ),
      ),
    );
  }
}
