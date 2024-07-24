import 'package:ddd_raja/presentation/home/screens/home_page.dart';
import 'package:ddd_raja/presentation/location/screens/location_page.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    routes: [
      GoRoute(
        name: Routes.home,
        path: Routes.home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: Routes.location,
        path: Routes.location,
        builder: (context, state) => const LocationPage(),
      ),
    ],
  );
}

class Routes {
  Routes._();
  static const home = '/';
  static const location = '/location';
}
