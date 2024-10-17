import 'package:auto_route/auto_route.dart';
import 'package:clario_test_flutter/core/router/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          path: '/home',
        ),
        AutoRoute(
          page: SignInRoute.page,
          path: '/sign_in',
        ),
        AutoRoute(
          page: SignUpRoute.page,
          initial: true,
          path: '/sign_up',
        ),
      ];

  @override
  List<AutoRouteGuard> get guards => [];
}
