import 'package:get/get.dart';
import 'package:teste_paginas/pages/bluetooth/bluetooth_controller.dart';
import 'package:teste_paginas/pages/splash/controllers/splash_controller.dart';


import '../configurations/configurations_controller.dart';
import '../home/home_controller.dart';
import '../options/options_controller.dart';
import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<OptionsController>(() => OptionsController());
    Get.lazyPut<ConfigurationsController>(() => ConfigurationsController());
    Get.lazyPut<SplashController>(() => SplashController());
    Get.lazyPut<BluetoothController>(() => BluetoothController());
  }
}
