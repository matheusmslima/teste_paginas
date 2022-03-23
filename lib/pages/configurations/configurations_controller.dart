import 'package:get/get.dart';

class ConfigurationsController extends GetxController {
  var counter = 0.obs;

  void increaseCounter() {
    counter.value += 1;
  }
}
