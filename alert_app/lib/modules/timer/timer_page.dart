import 'package:alert_app/modules/timer/timer_controller.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class TimerPage extends GetView<TimerController> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(
          'assets/images/background_timer.png',
          fit: BoxFit.cover,
          height: Get.height,
          width: Get.width,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Text(
            'Cronômetro para pausas',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        Positioned(
          bottom: Get.height * 0.25,
          child: GestureDetector(
            onTap: () {
              controller.timerPause();
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Cronômetro'),
                  content: const Text(
                    'Digite um tempo em Segundos\n(60s = 1m / 3600s = 1h)',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  actions: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                      child: TextField(
                        controller: controller.textControllerTimer,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        print('VALOR: ${controller.textControllerTimer.text}');
                        Navigator.pop(context, 'OK');
                        controller.duration.value =
                            int.parse(controller.textControllerTimer.text);
                        controller.timerController.restart(
                          duration: controller.duration.value,
                        );
                        print('VALOR: ${controller.duration.value}');
                      },
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
              controller.timerResume();            },
            child: Obx(() {
              return CircularCountDownTimer(
                duration: controller.duration.value,
                initialDuration: 0,
                isReverse: true,
                controller: controller.timerController,
                width: Get.width / 2,
                height: Get.height / 2,
                ringColor: Color(0xFFF48E61),
                fillColor: Colors.white.withOpacity(0.9),
                backgroundColor: Colors.white.withOpacity(0.3),
                strokeWidth: 5.0,
                strokeCap: StrokeCap.round,
                textStyle: TextStyle(
                  fontSize: 33.0,
                  color: Colors.white,
                ),
                textFormat: CountdownTextFormat.HH_MM_SS,
                isTimerTextShown: true,
                onComplete: () {
                  Fluttertoast.showToast(
                    msg: 'Hora de fazer uma pausa',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 2,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 20.0,
                  );
                },
              );
            }),
          ),
        ),
        Positioned(
          bottom: Get.height * 0.25,
          child: Text(
            'Faltam alguns minutos\npara a próxima pausa...',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        Obx(() {
          return Positioned(
            bottom: Get.height * 0.14,
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white.withOpacity(0.3),
              ),
              child: IconButton(
                icon: Icon(
                  controller.pause.value
                      ? Icons.skip_next_rounded
                      : Icons.pause,
                  color: Colors.white,
                  size: 50,
                ),
                onPressed: () {
                  controller.pause.value
                      ? controller.timerResume()
                      : controller.timerPause();
                },
              ),
            ),
          );
        }),
      ],
    );
  }
}
