import 'package:bloc/bloc.dart';

import 'package:equatable/equatable.dart';

import '../../repositiers/login_repository.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> loginUser(String email, String password) async {
    try {
      emit(LoginLoading());
      final loginModel = await AuthRepository().login(email, password);
      if (loginModel != null && loginModel.token != null) {
        emit(LoginSuccess());
      } else {
        emit(LoginFailure());
      }
    } catch (e) {
      emit(LoginFailure());
    }
  }
}