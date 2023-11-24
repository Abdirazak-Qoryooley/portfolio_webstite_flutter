import 'package:get/get.dart';
import 'package:my_portfolio/screens/about.dart';

class HomeController extends GetxController {
  var selectedPage = 0.obs;

  void changePage(int index) {
    selectedPage.value = index;
    switch (index) {
      case 0:
        Get.to(() => about_page());
        break;
      // Add cases for other pages if needed
    }
  }
}
