import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm/feature/auth/service/auth_service.dart';
import 'package:mvvm/feature/user/service/user_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository.g.dart';


class AuthRepository {

  final AuthService authService;
  final UserService userService;

  AuthRepository(this.authService, this.userService);

  Future<void> createAndRegisterUser({required String email, required String password, required String username}) async {
    await authService.registerUser(email: email, password: password);
    await userService.createUser(email: email, username: username);
  }



}


@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository( ref.watch(authServiceProvider) ,  ref.watch(userServiceProvider));
}