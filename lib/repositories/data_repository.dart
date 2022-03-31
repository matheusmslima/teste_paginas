import 'package:flutter_blue/flutter_blue.dart';


class DataRepository {
  Future<Set<String>> scanBluetooth() async {
    FlutterBlue flutterBlue = FlutterBlue.instance;
    var setNomesDevices = <String>{};
    flutterBlue.startScan(timeout: const Duration(seconds: 4));


    flutterBlue.stopScan();

    return setNomesDevices;
  }
}
