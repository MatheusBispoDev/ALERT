import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:alert_app/application/ui/theme_extensions.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Get.height * 0.7,
              width: Get.width,
              color: context.colorBlue,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 120),
                    child: Text(
                      'ALERT',
                      style: context.titleHeaderStyleText(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 270),
                    child: Text(
                      'Criar uma conta',
                      style: context.subTitleHeaderStyleText(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 350),
                    child: Text(
                      'Para uma melhor experiência\n no aplicativo, crie sua conta.\nSerá feito o controle diário\nde dor e será registrado como\n seu histórico de paciente.',
                      style: context.titleStyleText(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Get.height * 0.001),
            Container(
              height: Get.height * 0.261,
              width: Get.width,
              color: context.colorBlue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonCustomLogin(
                    colorButton: Colors.white,
                    textColor: Colors.black,
                    title: 'Entrar com o Google',
                    onPress: () {},
                  ),
                  SizedBox(height: 20),
                  ButtonCustomLogin(
                    colorButton: context.colorBlue,
                    textColor: Colors.white,
                    title: 'Entrar como visitante',
                    onPress: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ButtonCustomLogin extends StatelessWidget {
  ButtonCustomLogin(
      {Key? key,
      required this.title,
      required this.colorButton,
      required this.textColor,
      required this.onPress})
      : super(key: key);

  final String title;
  final Color colorButton;
  final Color textColor;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.7,
      height: 60,
      child: ElevatedButton(
        child: Text(
          title,
          style: context.descriptionStyleText(textColor: textColor),
          textAlign: TextAlign.center,
        ),
        onPressed: onPress,
        style: ElevatedButton.styleFrom(          
          primary: colorButton,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
