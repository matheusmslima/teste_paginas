import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer' as developer;
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          return RefreshIndicator(
            onRefresh: () {
              return Future.delayed(
                const Duration(seconds: 1),
                () {
                  controller.listIndex.value++;
                  developer.log('${controller.listIndex.value}');
                },
              );
            },
            child: ListView.builder(
              itemCount: controller.listIndex.value,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const Icon(Icons.abc),
                  title: Text('Dado $index'),
                  trailing: const Icon(Icons.graphic_eq),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
