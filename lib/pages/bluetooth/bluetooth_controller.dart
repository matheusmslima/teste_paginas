import 'package:get/get.dart';
import 'package:teste_paginas/repositories/data_repository.dart';
import 'dart:developer' as developer;

class BluetoothController extends GetxController {
  var dataRepository = DataRepository();
  var devices = <String>{}.obs;

  Set getDevices() {
    dataRepository.scanBluetooth().then(
      (setNames) {
        for (var name in setNames) {
          devices.add(name);
        }
      },
    );
    return devices.toSet();
  }

  void removeDevices(String deviceName) {
    if (devices.isNotEmpty) {
      devices.remove(deviceName);
      developer.log('$devices');
    }
  }

  void onCreateExecute() {
    if(devices.isEmpty){
      getDevices();
      // Get.snackbar(
      //   'tt',
      //   'ttt',
      //   progressIndicatorBackgroundColor: Colors.amberAccent,
      //   titleText: const Text('Procurando dispositivos'),
      //   messageText: const Text('Aguarde'),
      //   backgroundColor: Colors.blueAccent,
      //   snackStyle: SnackStyle.FLOATING,
      //   barBlur: 50,
      //   animationDuration: const Duration(seconds: 1),
      //   duration: const Duration(seconds: 4),
      // );
    }
  }
}
