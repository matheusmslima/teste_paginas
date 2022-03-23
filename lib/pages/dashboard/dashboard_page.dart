import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../bluetooth/bluetooth_page.dart';
import '../configurations/configurations_page.dart';
import '../home/home_page.dart';

import '../options/options_page.dart';
import 'dashboard_controller.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text('Garuda App'),
            elevation: 0,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                HomePage(),
                BluetoothPage(),
                OptionsPage(),
                ConfigurationsPage(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.blue,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            selectedLabelStyle: const TextStyle(fontSize: 12),
            unselectedLabelStyle: const TextStyle(fontSize: 12),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: Icons.home,
                label: 'Dados',
              ),
              _bottomNavigationBarItem(
                icon: Icons.bluetooth,
                label: 'Dispositivos',
              ),
              _bottomNavigationBarItem(
                icon: Icons.list,
                label: 'Opções',
              ),
              _bottomNavigationBarItem(
                icon: Icons.settings,
                label: 'Configurações',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({
    required IconData icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
