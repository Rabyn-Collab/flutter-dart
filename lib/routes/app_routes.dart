import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm/feature/auth/repository/auth_repository.dart';
import 'package:mvvm/feature/auth/view/login_page.dart';
import 'package:mvvm/feature/auth/view/sign_up_page.dart';
import 'package:mvvm/feature/home/view/home_page.dart';
import 'package:mvvm/routes/route_enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_routes.g.dart';


@riverpod
GoRouter goRouter(Ref ref) {
  final userState = ref.watch(userStreamProvider);
  return GoRouter(
    initialLocation: '/',
      redirect: (context, state){
      final user = userState.valueOrNull;
      if(user == null) return '/login';
      return '/home';
      },
      routes: [
        GoRoute(
            path: '/login',
          name: AppRoute.login.name,
          pageBuilder: (context, state) {
              return NoTransitionPage(child: const LoginPage());
          }),
        GoRoute(
            path: '/register',
            name: AppRoute.register.name,
            pageBuilder: (context, state) {
              return NoTransitionPage(child: const SignUpPage());
            }),
        GoRoute(
            path: '/home',
            name: AppRoute.home.name,
            pageBuilder: (context, state) {
              return NoTransitionPage(child: const HomePage());
            })

      ]
  );
}
