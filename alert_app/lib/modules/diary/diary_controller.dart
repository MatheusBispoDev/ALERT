import 'package:get/get.dart';

class DiaryController extends GetxController {
  var labelWeekActived = true.obs;
  var labelMounthActived = false.obs;
  
  void monthActived(){
    labelWeekActived.value = true;
    labelMounthActived.value = false;
    print('monthActived');
  }

  void weekActived(){
    labelWeekActived.value = true;
    labelMounthActived.value = false;
    print('monthActived');
  }

}