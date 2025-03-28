import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/auth_controller.dart';
import '../routes/app_routes.dart';

class SplashPage extends StatelessWidget {
  final AuthController _authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      _authController.user.value == null
          ? Get.offAllNamed(Routes.LOGIN)
          : Get.offAllNamed(Routes.HOME);
    });

    return Scaffold(
      body: Center(
        child: FlutterLogo(size: 100),
      ),
    );
  }
}