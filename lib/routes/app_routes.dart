import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mvvm/feature/auth/repository/auth_repository.dart';
import 'package:mvvm/feature/auth/view/login_page.dart';
import 'package:mvvm/feature/auth/view/sign_up_page.dart';
import 'package:mvvm/feature/chat/view/chat_page.dart';
import 'package:mvvm/feature/chat/view/recent_chats.dart';
import 'package:mvvm/feature/home/view/detail_page.dart';
import 'package:mvvm/feature/home/view/home_page.dart';
import 'package:mvvm/feature/post/model/post.dart';
import 'package:mvvm/feature/post/view/post_add.dart';
import 'package:mvvm/feature/post/view/post_edit.dart';
import 'package:mvvm/feature/user/view/user_detail.dart';
import 'package:mvvm/routes/route_enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
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
              path: 'chatpage',
              name: AppRoute.chat.name,
              pageBuilder: (context, state) {
                return NoTransitionPage(child:   ChatPage(roomId: state.extra as String));
              },
            ),

            GoRoute(
              path: 'recent-chats',
              name: AppRoute.recent.name,
              pageBuilder: (context, state) {
                return NoTransitionPage(child:  const RecentChats());
              },
            ),


            GoRoute(
              path: 'user-detail',
              name: AppRoute.userDetail.name,
              pageBuilder: (context, state) {
                return NoTransitionPage(child:  UserDetail(user: state.extra as types.User));
              },
            ),


            GoRoute(
                path: 'detail/:id',
              name: AppRoute.detail.name,
              pageBuilder: (context, state) {
                  final id = state.pathParameters['id']!;
                return NoTransitionPage(child:  DetailPage(id: id,));
              },
            ),

            GoRoute(
              path: 'add-post',
              name: AppRoute.addPost.name,
              pageBuilder: (context, state) {

                return NoTransitionPage(child:  const PostAdd());
              },
            ),
            GoRoute(
              path: 'edit-post',
              name: AppRoute.editPost.name,
              pageBuilder: (context, state) {
                return NoTransitionPage(child:  PostEdit(post: state.extra as Post));
              },
            ),


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
