import 'package:freezed_annotation/freezed_annotation.dart';

part 'button_navigation_state.freezed.dart';

@freezed
class ButtonNavigationState with _$ButtonNavigationState {
  const factory ButtonNavigationState.idle() = NavigationStateIdle;

  const factory ButtonNavigationState.loading() = NavigationStateLoading;

  const factory ButtonNavigationState.profile() = NavigationStateProfile;
  const factory ButtonNavigationState.create() = NavigationStateCreate;
  const factory ButtonNavigationState.library() = NavigationStateLibrary;
  const factory ButtonNavigationState.home() = NavigationStateHome;

  const factory ButtonNavigationState.error({String? message}) = NavigationStateError;
}
