import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm/core/firebase_providers/firebase_providers.dart';
import 'package:mvvm/feature/auth/service/auth_service.dart';
import 'package:mvvm/feature/user/service/user_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';



part 'auth_repository.g.dart';


class AuthRepository {

  final AuthService authService;
  final UserService userService;

  AuthRepository(this.authService, this.userService);


  Future<void> loginUser({required String email, required String password}) async {
    await authService.loginUser(email: email, password: password);
  }



  Future<void> createAndRegisterUser({required String email, required String password, required String username}) async {
    await authService.registerUser(email: email, password: password, username: username);
    //await userService.createUser(email: email, username: username);
  }

  Future<void> userLogOut() async {
    await authService.logoutUser();
  }



}


@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository( ref.watch(authServiceProvider) ,  ref.watch(userServiceProvider));
}

@riverpod
Stream<User?> userStream (Ref ref) {
  return ref.watch(firebaseAuthProvider).authStateChanges();
}