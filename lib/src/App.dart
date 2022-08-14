import 'package:contact/src/controller/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'components/svg_src.dart';

class App extends GetView<BottomNavController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(

        child: Obx(
          () =>
               Scaffold(
               backgroundColor: Color(0xffD5F2F2),
              appBar: AppBar(
                toolbarHeight: 100,
                titleSpacing: 20,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.only(
                //     bottomLeft: Radius.circular(50),
                //   ),
                // ),
                backgroundColor: Color(0xffF3F8FC),
                elevation: 0,


                title: Padding(
                  padding: EdgeInsets.only(
                    left: 20,),
                  child: SvgPicture.asset(Deco.title, width: 160,),
                ),


                actions: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child:
                    Image.asset('assets/icx/user.png',),
                  ),
                ],


              ),

              body:
                  IndexedStack(
                    index: controller.pageIndex.value,
                    children: [
                    Container(

                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),

                      ),

                      color: Color(0xffF3F8FC),
                    ),

                      height: 90,
                      width: double.infinity,
                      padding: EdgeInsets.only(
                        left: 40, bottom: 20,
                      ),

                      child:
                      SvgPicture.asset(Deco.subText,
                        width: 100,
                        alignment: Alignment.centerLeft, ),




                    ),
                    Container(
                      child: Center(child: Text('STAMP')),
                    ),


                    Container(
                      child: Center(child: Text('EBOOK')),
                    ),
                    Container(
                      child: Center(child: Text('SEARCH')),
                    ),
                      Container(
                        child: Center(child: Text('SHSEARCH')),
                      ),
                    ]
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