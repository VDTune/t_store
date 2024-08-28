import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get_storage/get_storage.dart';

import '../../screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  ///Các biến
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  ///Cập nhật index trang hiện tại khi vuốt trang
  void updatePageIndicator(index) => currentPageIndex.value = index;

  ///Chuyển trang trên Dot
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// Cập nhật index và đi đến trang tiếp theo
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.to(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  ///Cập nhật index và đến trang cuối
  void skipPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}