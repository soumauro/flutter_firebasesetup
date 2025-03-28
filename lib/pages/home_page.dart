import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';

class HomePage extends StatelessWidget {
  final AuthController _authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: _authController.signOut,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bem-vindo ao app!', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Obx(() => Text(
                  _authController.user.value?.displayName ?? 'Usuário',
                  style: TextStyle(fontSize: 18),
                )),
          ],
        ),
      ),
    );
  }
}