import 'package:alert_app/modules/profile/widgets/profile_content_card_switch.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'profile_content_card_text.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: Get.height * 0.45,
        width: Get.width * 0.9,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileContentCardText(textCard: 'Preferências'),
            ProfileContentCardSwitch(textCard: 'Indicar Alongamentos'),
            ProfileContentCardSwitch(textCard: 'Notificação de Rotina'),
            ProfileContentCardSwitch(textCard: 'Cronômetro Ativado sempre'),
            ProfileContentCardSwitch(textCard: 'Permitir Localização'),
          ],
        ),
      ),
    );
  }
}
