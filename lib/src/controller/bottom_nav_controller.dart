import 'dart:io';

import 'package:contact/src/components/message_popup.dart';
// import 'package:contact/src/pages/qrcode.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum PageName{ HOME,STAMP,QRCODE,EBOOK,SEARCH,SHSEARCH }

class BottomNavController extends GetxController {
  RxInt pageIndex = 0.obs;
  List<int> bottomHistory = [0];

  void _changePage(int value, {bool hasGesture = true}) {
    pageIndex(value);
    if (!hasGesture) return;
    if (!bottomHistory.contains(value)) {
      bottomHistory.remove(value);
    }
    bottomHistory.add(value);
    print(bottomHistory);

  }

  void changeBottomNav(int value, {bool hasGesture = true}) {
    var page = PageName.values[value];
    switch (page) {
      case PageName.QRCODE:
        // Get.to(() => const QrCode());
      case PageName.HOME:
      case PageName.STAMP:
      case PageName.EBOOK:
      case PageName.SEARCH:
      case PageName.SHSEARCH:
        _changePage(value, hasGesture: hasGesture);
        break;
    }


  }

  Future<bool> willPopAction() async{
    if(bottomHistory.length==1){
      showDialog(context: Get.context!, builder: (context) => MessagePopup(
        message: '종료하시겠습니까?',
        okCallback: () {
          exit(0);
        },
        cancelCallback:
        Get.back,

        title: '시스템',
      ),
      );
      return true;
    }else{
      bottomHistory.removeLast();
      var index = bottomHistory.last;
      changeBottomNav(index, hasGesture: false);
      print(bottomHistory);
      return false;
    }
  }
}