import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: context.width,
                child: Image.asset(
                  'assets/images/garuda_logo.png',
                  width: 250,
                  color: Colors.white.withOpacity(0.3),
                  colorBlendMode: BlendMode.modulate,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: context.heightTransformer(reducedBy: 85),
                  ),
                  Image.asset(
                    'assets/images/logo_empresa.jpg',
                    width: 250,
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  const Text(
                    'Bem vindo ao Garuda',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/');
                    },
                    child: const Text('ACESSAR'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
