import 'package:bloc/bloc.dart';
import 'package:hikayaats/model/user.dart';
import 'package:hikayaats/service/auth_service.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> signUp({
    required String email,
    required String password,
    required String name,
    required String tingkat,
    required String sekolah,
  }) async {
    try {
      emit(AuthLoading());

      UserModel user = await AuthService().signUp(
        email: email,
        password: password,
        name: name,
        sekolah: sekolah,
        tingkat: tingkat,
      );

      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}
