import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class TimerController extends GetxController {
  var pause = RxBool(false);
  var duration = RxInt(25);
  CountDownController timerController = CountDownController();
  TextEditingController textControllerTimer = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  void timerPause() {
    timerController.pause();
    pause.value = true;
  }

  void timerResume() {
    timerController.resume();
    pause.value = false;
  }
}
