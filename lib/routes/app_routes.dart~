import 'package:go_router/go_router.dart';
import 'package:magh/models/book.dart';
import 'package:magh/pages/detail_page.dart';
import 'package:magh/pages/home_page.dart';
import 'package:magh/routes/route_enums.dart';

class AppRoutes {
  static GoRouter get routes {
    return GoRouter(
      initialLocation: '/',

      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return HomePage();
          },
          routes: [

            GoRoute(
              path: 'detail',
              name: AppRoute.detail.name,
              builder: (context, state) {
                return DetailPage(book: state.extra as Book);
              },
            ),

          ],
        ),
      ],
    );
  }
}
