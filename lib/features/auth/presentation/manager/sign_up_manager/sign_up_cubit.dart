import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:story_spark/features/auth/presentation/manager/sign_up_manager/sign_up_or_in_state.dart';

@injectable
class SignUpOrInCubit extends Cubit<SignUpOrInState> {
  SignUpOrInCubit() : super(const SignUpOrInState.idle());

  goToSigIn() async {
    emit(const SignUpOrInState.idle());
    emit(const SignUpOrInState.signIn());
  }

  goToSigUp() async {
    emit(const SignUpOrInState.idle());
    emit(const SignUpOrInState.signUp());
  }

  goToProfile() async {
    emit(const SignUpOrInState.idle());
    emit(const SignUpOrInState.profile());
  }
}
