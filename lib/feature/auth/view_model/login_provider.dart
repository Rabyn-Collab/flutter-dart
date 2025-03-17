import 'package:mvvm/feature/auth/repository/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'login_provider.g.dart';


@riverpod
class Login extends _$Login {
  @override
  FutureOr<void> build()  {

  }

  Future<void> loginUser({required String email, required String password}) async {
     state = const AsyncLoading();
     state = await AsyncValue.guard(() => ref.read(authRepositoryProvider).loginUser(email: email, password: password));
  }

}
