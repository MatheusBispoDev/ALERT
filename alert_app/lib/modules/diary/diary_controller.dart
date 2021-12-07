import 'package:get/get.dart';

class DiaryController extends GetxController {
  var labelWeekActived = true.obs;
  var labelMounthActived = false.obs;

  DiaryController();
  
  void monthActived(){
    labelWeekActived.value = false;
    labelMounthActived.value = true;
  }

  void weekActived(){
    labelWeekActived.value = true;
    labelMounthActived.value = false;
  }

}