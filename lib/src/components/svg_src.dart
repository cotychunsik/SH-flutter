import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class SvgSrc extends StatelessWidget {
  String icon;
  final double? height;
  SvgSrc(this.icon, {
    Key? key,
    this.height=150,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: height! / Get.mediaQuery.devicePixelRatio,);
  }
}

class IconsPath {
  static String get homeOn => 'assets/icx_text/home_on.svg';
  static String get homeOff => 'assets/icx_text/home_off.svg';
  static String get stampCollectionOn => 'assets/icx_text/stamp_collection_on.svg';
  static String get stampCollectionOff => 'assets/icx_text/stamp_collection_off.svg';
  static String get qrcodeOn => 'assets/icx_text/qrcode_on.svg';
  static String get qrcodeOff => 'assets/icx_text/qrcode_off.svg';
  static String get ebookOn => 'assets/icx_text/ebook_on.svg';
  static String get ebookOff => 'assets/icx_text/ebook_off.svg';
  static String get searchOn => 'assets/icx_text/search_on.svg';
  static String get searchOff => 'assets/icx_text/search_off.svg';
  static String get shSearchOn => 'assets/icx_text/sh_symbol_on.svg';
  static String get shSearchOff => 'assets/icx_text/sh_symbol_off.svg';


}

class Deco {
  static String get title => 'assets/main_title.svg';
  static String get subText => 'assets/main_subtitle.svg';
  static String get divider=> 'assets/deco_elements/dash_divider.svg';
  static String get map => 'assets/deco_elements/main_map.svg';
}

class Btn {
  static String get apBtn => 'assets/button/sns_apple.svg';
  static String get kaBtn => 'assets/button/sns_kakao.svg';
  static String get naBtn => 'assets/button/sns_naver.svg';
}