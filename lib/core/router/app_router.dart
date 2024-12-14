import 'package:evolution_x/src/auth/login/view/login_view_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'route_names.dart';

class AppRoutes {
  static final List<GetPage> routes = [
    GetPage(
      name: RouteNames.login,
      page: () => const LoginViewScreen(),
      transition: Transition.circularReveal,
      transitionDuration: const Duration(milliseconds: 250),
    ),
  ];
}
