import 'package:flutter_blue/flutter_blue.dart';
import 'dart:developer' as developer;

import '../models/data/data.dart';

class DataRepository {
  Future<Set<String>> scanBluetooth() async {
    FlutterBlue flutterBlue = FlutterBlue.instance;
    var setNomesDevices = <String>{};
    flutterBlue.startScan(timeout: const Duration(seconds: 4));

    var subscription = flutterBlue.scanResults.listen(
      (results) {
        for (ScanResult r in results) {
          // developer.log('$r');

          if (r.device.name != '') {
            setNomesDevices.add(r.device.name);
          }
        }
        // for (var nomeDevice in setNomesDevices) {
        //   developer.log(nomeDevice);
        // }
      },
    );

    flutterBlue.stopScan();

    return setNomesDevices;
  }
}
