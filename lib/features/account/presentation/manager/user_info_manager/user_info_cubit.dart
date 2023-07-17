import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:story_spark/features/account/domain/entities/user_entity.dart';
import 'package:story_spark/features/account/domain/use_cases/update_user_usecase.dart';
import 'package:story_spark/features/account/presentation/manager/user_info_manager/user_info_state.dart';

@injectable
class UserInfoCubit extends Cubit<UserInfoState> {
  final UpdateUserUseCase _updateUserUseCase;

  UserInfoCubit(
    this._updateUserUseCase,
  ) : super(const UserInfoState.idle());

  updateUser(UserEntity userEntity) async {
    emit(const UserInfoState.updateLoading());
    final result = await _updateUserUseCase.call(userEntity);
    result.whenOrNull(success: (data, message, status) {
      emit(UserInfoState.updateSuccess(
        userEntity: data,
        message: message,
      ));
    }, failure: (message) {
      emit(UserInfoState.error(message: message ?? ''));
    });
  }
}
