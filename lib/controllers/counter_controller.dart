import 'package:get/get.dart';

class CounterController extends GetxController {
  final RxInt counter = 0.obs;

  static CounterController get to => Get.find();
}
