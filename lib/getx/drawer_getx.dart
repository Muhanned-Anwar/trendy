import 'package:get/get.dart';

class DrawerGetX extends GetxController {
  late RxDouble _womenProgressValue ;
  late RxDouble _menProgressValue ;
  late RxDouble _womenMinHeightProgressValue;
  late RxDouble _menMinHeightProgressValue;
  late RxInt _firstTime;
  static DrawerGetX get to => Get.find();

  @override
  void onInit() {
    super.onInit();
    _womenProgressValue = 0.0.obs;
    _menProgressValue = 1.0.obs;
    _womenMinHeightProgressValue = 1.0.obs;
    _menMinHeightProgressValue = 2.0.obs;
    _firstTime = 0.obs;
  }

  double get menMinHeightProgressValue => _menMinHeightProgressValue.value;

  void changeMenMinHeightProgressValue(double value) {
    _menMinHeightProgressValue.value = value;
  }

  double get womenMinHeightProgressValue => _womenMinHeightProgressValue.value;

  void changeWomenMinHeightProgressValue(double value) {
    _womenMinHeightProgressValue.value = value;
  }

  double get menProgressValue => _menProgressValue.value;

  void changeMenProgressValue(double value) {
    _menProgressValue.value = value;
  }

  double get womenProgressValue => _womenProgressValue.value;

  void changeWomenProgressValue(double value) {
    _womenProgressValue.value = value;
  }

  void changeFirstTime(int value) {
    _firstTime.value = value;
  }

  int get firstTime => _firstTime.value;
}
