import 'package:mvvm/feature/auth/repository/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_provider.g.dart';


@riverpod
class SignUp extends _$SignUp {
  @override
  FutureOr<void> build() async {
 
  }

  Future<void> userRegister({required String email, required String password, required String username}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => ref.read(authRepositoryProvider).createAndRegisterUser(email: email, password: password, username: username));
  }

}
