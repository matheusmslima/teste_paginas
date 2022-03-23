import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/lock_controller.dart';

class LockPage extends GetView<LockController> {
  const LockPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 190, 190),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 1,
        title: const Text('Página de bloqueio'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              cursorColor: Colors.redAccent,
              decoration: const InputDecoration(
                isDense: true,
                filled: true,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                icon: Icon(Icons.lock, color: Colors.red),
                hintText: 'Digite a senha de bloqueio',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Bloquear', style: TextStyle(fontSize: 20),),
              style: ElevatedButton.styleFrom(
                primary: Colors.red
              )
            )
          ],
        ),
      ),
    );
  }
}
