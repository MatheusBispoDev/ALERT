import 'package:alert_app/application/ui/widgets/appbar.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'medical_record_controller.dart';
import 'widgets/medical_record_item.dart';

class MedicalRecordPage extends GetView<MedicalRecordController> {
  const MedicalRecordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Ficha Técnica'),
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: ListView(
          children: [
            MedicalRecordItem(
              controller: controller.textControllerWeight,
              titleItem: 'Peso',
              keybordType: TextInputType.number,
              labelTaxt: '80.70',
            ),
            MedicalRecordItem(
              controller: controller.textControllerHeight,
              titleItem: 'Altura',
              keybordType: TextInputType.number,
              labelTaxt: '1.82',
            ),
            MedicalRecordItem(
              controller: controller.textControllerGenre,
              titleItem: 'Genêro',
              keybordType: TextInputType.number,
              labelTaxt: 'Masculino ou Feminino',
            ),
            MedicalRecordItem(
              controller: controller.textControllerAge,
              titleItem: 'Idade',
              keybordType: TextInputType.number,
              labelTaxt: '22',
            ),
            MedicalRecordItem(
              controller: controller.textControllerAverageTimeSitting,
              titleItem: 'Média Tempo Sentado',
              keybordType: TextInputType.number,
              labelTaxt: '5h 20min = 5.20',
            ),
            MedicalRecordItem(
              controller: controller.textControllerPainIntensity,
              titleItem: 'Intensidade da dor',
              keybordType: TextInputType.number,
              labelTaxt: 'Alta / Media / Baixa',
            ),
            MedicalRecordItem(
              controller: controller.textControllerFrequencyPhysicalActivity,
              titleItem: 'Frequência de Atividad Física',
              keybordType: TextInputType.number,
              labelTaxt: '5h = 5',
            ),
            ProfileButton(
              onPress: () => controller.saveMedicalRecord(),
              titleButton: 'Salvar',
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    Key? key,
    required this.titleButton,
    required this.onPress,
  }) : super(key: key);

  final String titleButton;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
      child: Container(
        width: Get.width * 0.8,
        height: 60,
        child: ElevatedButton(
          child: Text(
            titleButton,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF334856),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(color: Colors.grey.shade50),
            ),
          ),
        ),
      ),
    );
  }
}
