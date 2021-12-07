import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({Key? key}) : super(key: key);

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
          child: CircularCountDownTimer(
            duration: 100,
            initialDuration: 5,
            isReverse: true,
            controller: CountDownController(),
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
            onStart: () {
              print('Countdown Started');
            },
            onComplete: () {
              print('Countdown Ended');
            },
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
        Positioned(
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
                Icons.pause,
                color: Colors.white,
                size: 50,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
