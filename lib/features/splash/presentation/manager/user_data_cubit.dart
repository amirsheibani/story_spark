import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:story_spark/features/account/domain/use_cases/get_user_usecase.dart';
import 'package:story_spark/features/splash/presentation/manager/user_data_state.dart';

@injectable
class UserDataCubit extends Cubit<UserDataState> {
  final GetUserUseCase _getUserUseCase;

  UserDataCubit(
    this._getUserUseCase,
  ) : super(const UserDataState.idle());

  getUser() async {
    emit(const UserDataState.loading());
    final result = await _getUserUseCase.call();
    result.whenOrNull(success: (data, message, status) {
      emit(UserDataState.success(
        userEntity: data,
        message: message,
      ));
    }, failure: (message) {
      emit(UserDataState.error(message: message ?? ''));
    });
  }

  getUserIfExist() async {
    // emit(const UserDataState.loading());
    final result = await _getUserUseCase.call();
    result.whenOrNull(
        success: (data, message, status) {
          emit(UserDataState.success(
            userEntity: data,
            message: message,
          ));
        },
        failure: (message) {});
  }
}
