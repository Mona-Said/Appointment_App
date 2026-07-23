import 'package:appointment_app/core/networking/api_result.dart';
import 'package:appointment_app/features/login/data/models/login_request_model.dart';
import 'package:appointment_app/features/login/data/repos/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  void emitLogin(LoginRequestModel loginRequestModel) async {
    emit(LoginState.loading());
    final response = await _loginRepo.login(loginRequestModel);
    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
