import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:story_spark/features/main/presentation/manager/navigion_body_manager/button_navigation_state.dart';
import 'package:story_spark/features/main/presentation/widgets/main_navigation_body.dart';

@injectable
class ButtonNavigationCubit extends Cubit<ButtonNavigationState> {
  ButtonNavigationCubit() : super(const ButtonNavigationState.idle());
  MainNavigationItem _mainNavigationItem = MainNavigationItem.profile;

  goTo(MainNavigationItem mainNavigationItem) async {
    emit(const ButtonNavigationState.loading());
    _mainNavigationItem = mainNavigationItem;
    switch (_mainNavigationItem) {
      case MainNavigationItem.profile:
        emit(const ButtonNavigationState.profile());
        break;
      case MainNavigationItem.create:
        emit(const ButtonNavigationState.create());
        break;
      case MainNavigationItem.library:
        emit(const ButtonNavigationState.library());
        break;
      case MainNavigationItem.home:
        emit(const ButtonNavigationState.home());
        break;
    }
  }
}
