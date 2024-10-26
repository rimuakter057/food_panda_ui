import 'package:get/get.dart';
class SwitchController extends GetxController {
  RxBool switchValue = false.obs;

  void changeSwitch(bool value){
    switchValue.value = value;
    update();
  }
}