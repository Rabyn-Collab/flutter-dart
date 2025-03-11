import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm/feature/auth/repository/auth_repository.dart';
import 'package:mvvm/feature/auth/view/login_page.dart';
import 'package:mvvm/feature/auth/view/sign_up_page.dart';
import 'package:mvvm/feature/home/view/detail_page.dart';
import 'package:mvvm/feature/home/view/home_page.dart';
import 'package:mvvm/routes/route_enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_routes.g.dart';


@riverpod
GoRouter goRouter(Ref ref) {
  final userState = ref.watch(userStreamProvider);
  return GoRouter(
    initialLocation: '/home',
      redirect: (context, state){
      final isAuthenticate = userState.valueOrNull != null;
      final authenticating = state.matchedLocation == '/login' || state.matchedLocation == '/register';

      if(!isAuthenticate) return authenticating ? null : '/login';

      //authenticate

      if(authenticating)  return   '/home';

      return null;

      },
      routes: [

        GoRoute(
            path: '/home',
            name: AppRoute.home.name,
            pageBuilder: (context, state) {
              return NoTransitionPage(child: const HomePage());
            },
          routes: [
            GoRoute(
                path: 'detail/:id',
              name: AppRoute.detail.name,
              pageBuilder: (context, state) {
                  final id = state.pathParameters['id']!;
                return NoTransitionPage(child:  DetailPage(id: id,));
              },
            )
          ]

            ),
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


      ]
  );
}
