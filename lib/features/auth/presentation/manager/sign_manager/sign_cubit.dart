import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:story_spark/features/auth/domain/entities/sign_in_request_entity.dart';
import 'package:story_spark/features/auth/domain/entities/sign_in_response_entity.dart';
import 'package:story_spark/features/auth/domain/entities/sign_up_request_entity.dart';
import 'package:story_spark/features/auth/domain/use_cases/sign_in_usecase.dart';
import 'package:story_spark/features/auth/domain/use_cases/sign_up_usecase.dart';
import 'package:story_spark/features/auth/presentation/manager/sign_manager/sign_state.dart';

@injectable
class SignCubit extends Cubit<SignState> {
  final SignInUseCase _signInUseCase;
  final SignUpUseCase _signUpUseCase;

  SignInResponseEntity? signInResponseEntity;

  SignCubit(this._signInUseCase, this._signUpUseCase) : super(const SignState.idle());

  signIn(String email, String password) async {
    emit(const SignState.signInLoading());
    final result = await _signInUseCase.call(SignInRequestEntity(email: email, password: password));
    result.whenOrNull(success: (data, message, status) {
      signInResponseEntity = data;
      emit(SignState.signInSuccess(signInResponseEntity: data));
    }, failure: (message) {
      emit(SignState.error(message: message ?? ''));
    });
  }

  signUp(String email, String password, String confirmPassword, String username) async {
    emit(const SignState.signUpLoading());
    final result = await _signUpUseCase.call(SignUpRequestEntity(email: email, password: password, confirmPassword: confirmPassword));
    result.whenOrNull(success: (data, message, status) {
      emit(const SignState.signUpSuccess());
    }, failure: (message) {
      emit(SignState.error(message: message ?? ''));
    });
  }
}
