

import 'package:api_getx/controller/title_controller.dart';
import 'package:get/get.dart';

class SampleBind extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<TitleController>(() => TitleController());
  }

}