import 'package:contact/src/controller/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'components/svg_src.dart';
import 'pages/ebook.dart';
import 'pages/home.dart';
import 'pages/qrcode.dart';
import 'pages/search.dart';
import 'pages/sh_search.dart';
import 'pages/stamp.dart';

class App extends GetView<BottomNavController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(

        child: Obx(
          () =>
               Scaffold(



              body:
                  IndexedStack(
                    index: controller.pageIndex.value,
                    children: [
                      const Home(),
                    const Stamp(),



                      const QrCode(),
                      // Container(
                      //   child: Center(child: Text('QRCODE')),
                      // ),

                      const Ebook(),
                      const Search(),
                      const shSearch(),


    ],
    ),






              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Color(0xffF3F8FC),

                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: controller.pageIndex.value,
                elevation: 0,
                onTap: controller.changeBottomNav,
                items: [
                  BottomNavigationBarItem(icon: SvgSrc(IconsPath.homeOff),
                    activeIcon: SvgSrc(IconsPath.homeOn),
                    label: 'HOME',
                  ),
                  BottomNavigationBarItem(
                    icon: SvgSrc(IconsPath.stampCollectionOff),
                    activeIcon: SvgSrc(IconsPath.stampCollectionOn),
                    label: 'STAMP',
                  ),
                  BottomNavigationBarItem(icon: SvgSrc(IconsPath.qrcodeOff),
                    activeIcon: SvgSrc(IconsPath.qrcodeOn),
                    label: 'QRCODE',
                  ),
                  BottomNavigationBarItem(icon: SvgSrc(IconsPath.ebookOff),
                    activeIcon: SvgSrc(IconsPath.ebookOn),
                    label: 'EBOOK',
                  ),
                  BottomNavigationBarItem(icon: SvgSrc(IconsPath.searchOff),
                    activeIcon: SvgSrc(IconsPath.searchOn),
                    label: 'SEARCH',
                  ),
                  BottomNavigationBarItem(icon: SvgSrc(IconsPath.shSearchOff),
                    activeIcon: SvgSrc(IconsPath.shSearchOn),
                    label: 'SHSEARCH',
                  ),
                ],

              ),
    ),
    ),




    onWillPop: controller.willPopAction
    );
}
}