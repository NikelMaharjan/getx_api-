import 'package:api_getx/api/title.dart';
import 'package:api_getx/models/title_model.dart';
import 'package:get/get.dart';

class TitleController extends GetxController {

  List<titleModel> titlelist = [];
  bool _isLoading = true;
  bool get isLoading => _isLoading;
  @override
  void onInit() {
    fetchTitle();
    super.onInit();
  }

  fetchTitle() async {
    try {
      showProgressBar();
      var title = await ApiCall().fetchTitle();
      print("ok");
      updateList(title);
    }
    finally {
      hideProgessBar();
    }
  }

  updateList(List<titleModel> list) {
    print("length of list is ${list.length}");
    titlelist = list;
    update();
  }

  void showProgressBar() {
    _isLoading = true;
  }

  void hideProgessBar() {
    _isLoading = false;

  }
}
