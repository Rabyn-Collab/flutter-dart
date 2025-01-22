import 'package:fluttermangsir/pages/about_page.dart';
import 'package:fluttermangsir/pages/form_page.dart';
import 'package:fluttermangsir/pages/grid_page.dart';
import 'package:fluttermangsir/pages/home_page.dart';
import 'package:fluttermangsir/routes/route_enum.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',

  routes: [

    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) {
        return HomePage();
      },
      routes: [
        GoRoute(
          path: 'grid',
          name: AppRoute.grid.name,
          builder: (context, state) {
            return GridPage();
          },
        ),

      ]
    ),



    GoRoute(
      path: '/form',
      name: AppRoute.form.name,
      builder: (context, state) {
        return FormPage();
      },
    ),


    GoRoute(
      path: '/about',
      name: AppRoute.about.name,
      builder: (context, state) {
        return AboutPage();
      },
    ),

  ],
);
