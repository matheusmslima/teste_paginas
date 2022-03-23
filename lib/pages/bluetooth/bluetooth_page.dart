import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bluetooth_controller.dart';

class BluetoothPage extends GetView<BluetoothController> {
  const BluetoothPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.onCreateExecute();
    return Scaffold(
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.devices.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: const Icon(Icons.mobile_friendly),
              title: Text(
                'Dispositivo ${controller.devices.elementAt(index)}',
                textAlign: TextAlign.justify,
              ),
              trailing: IconButton(
                onPressed: () {
                  // if(index > 0){
                  //   print(index);
                  //   controller
                  //       .removeDevices(controller.devices.elementAt(index));

                  //   Get.snackbar(
                  //     'Sucesso!',
                  //     'Dispositivo removido com sucesso',
                  //     titleText: Text('Item ', textAlign: TextAlign.center),
                  //     messageText: Text(
                  //         'Dispositivo ${controller.devices.elementAt(index)} removido com sucesso',
                  //         textAlign: TextAlign.center),
                  //     backgroundColor: Colors.redAccent,
                  // snackStyle: SnackStyle.FLOATING,
                  // barBlur: 50,
                  // animationDuration: const Duration(seconds: 1),
                  // duration: Duration(seconds: 1),
                  //  );
                  // } else {
                  //   // controller.devices.elementAt(index) = '';
                  // }
                },
                icon: const Icon(
                  Icons.delete_outline,
                  color: Colors.redAccent,
                ),
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getDevices();
          Get.snackbar(
            'Procurando dispositivos', 'Aguarde ...',
            progressIndicatorBackgroundColor: Colors.amberAccent,
            //titleText: const Text('Procurando dispositivos'),
            //messageText: const Text('Aguarde'),
            backgroundColor: Colors.blue[100],
            snackStyle: SnackStyle.FLOATING,
            barBlur: 50,
            animationDuration: const Duration(seconds: 1),
            duration: const Duration(seconds: 4),
          );
        },
        child: const Icon(Icons.bluetooth),
      ),
    );
  }
}
