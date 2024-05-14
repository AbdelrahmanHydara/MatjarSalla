import 'package:get/get.dart';
import '../../modules/auth/login/login_screen.dart';
import '../../modules/language/language_screen.dart';
import '../../modules/layout/layout_screen.dart';
import '../middleware/my_middleware.dart';

List<GetPage<dynamic>>? routes =
[
  GetPage(
      name: '/', page: () => const LanguageScreen(),middlewares: [MyMiddleware()],
  ),
  GetPage(
      name: '/login', page: () => const LoginScreen()
  ),
  GetPage(
      name: '/layout', page: () => const LayoutScreen()
  ),
];