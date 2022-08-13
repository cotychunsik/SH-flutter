import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SvgData extends StatelessWidget {
  String icon;
  final double? width;
  SvgData(this.icon, {
    Key? key,
    this.width=55,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: width! / Get.mediaQuery.devicePixelRatio,);
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