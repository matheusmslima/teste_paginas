import 'package:get/get.dart';
import 'package:teste_paginas/pages/lock/views/lock_page.dart';
import 'package:teste_paginas/pages/splash/bindings/splash_binding.dart';

import '../pages/dashboard/dashboard_binding.dart';
import '../pages/dashboard/dashboard_page.dart';
import '../pages/lock/bindings/lock_binding.dart';
import '../pages/splash/views/splash_page.dart';
import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => const DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: '/splash',
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: '/lock',
      page: () => const LockPage(),
      binding: LockBinding(),
    )
  ];
}
