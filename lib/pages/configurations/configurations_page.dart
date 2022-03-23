import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:settings_ui/settings_ui.dart';

import 'configurations_controller.dart';

class ConfigurationsPage extends GetView<ConfigurationsController> {
  const ConfigurationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text('Configurações'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: const Icon(Icons.language),
                title: const Text('Language'),
                value: const Text('English'),
                onPressed: (BuildContext context) => Get.toNamed('/home'),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.lock),
                title: const Text('Bloquear cadeira'),
                value: const Text('Abrir página de bloqueio'),
                onPressed: (BuildContext context) => Get.toNamed('/lock'),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.exit_to_app_outlined),
                title: const Text('Sair'),
                value: const Text('Voltar a página inicial'),
                onPressed: (BuildContext context) => Get.toNamed('/splash'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
