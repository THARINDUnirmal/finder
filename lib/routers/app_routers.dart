import 'package:finder/screens/main_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouters {
  static GoRouter route = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => MainScreen(),
      )
    ],
  );
}
