import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class SvgData extends StatelessWidget {
  String icon;
  final double? height;
  SvgData(this.icon, {
    Key? key,
    this.height=60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      height: height! / Get.mediaQuery.devicePixelRatio,);
  }
}

class IconsPath {
  static String get homeOn => 'icx_text/home_on.svg';
  static String get homeOff => 'icx_text/home_off.svg';
  static String get stampCollectionOn => 'icx_text/stamp_collection_on.png';
  static String get stampCollectionOff => 'icx_text/stamp_collection_off.svg';
  static String get qrcodeOn => 'icx_text/qrcode_on.svg';
  static String get qrcodeOff => 'icx_text/qrcode_off.svg';
  static String get ebookOn => 'icx_text/ebook_on.svg';
  static String get ebookOff => 'icx_text/ebook_off.svg';
  static String get searchOn => 'icx_text/search_on.svg';
  static String get searchOff => 'icx_text/search_off.svg';
  static String get shSearchOn => 'icx_text/sh_symbol_on.svg';
  static String get shSearchOff => 'icx_text/sh_symbol_off.svg';










}