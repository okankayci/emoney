import 'package:auto_route/auto_route.dart';
import 'package:e_money/app/views/view_splash/splash_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashViewRoute.page, initial: true, path: '/'),
      ];
}
