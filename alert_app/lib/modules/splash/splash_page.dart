import 'package:flutter/material.dart';
import 'package:alert_app/application/ui/theme_extensions.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: context.colorBlue,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Image.asset('assets/images/logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text(
                'ALERT',
                style: context.titleHeaderStyleText(),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: Text('Version 0.1', style: TextStyle(color: Colors.white, fontSize: 16),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
