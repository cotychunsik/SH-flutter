import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'components/svg_data.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(

        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
            titleSpacing: 20,
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.only(
            //     bottomLeft: Radius.circular(50),
            //   ),
            // ),
            backgroundColor: Color(0xffF3F8FC),
            shadowColor: Colors.transparent,


            title: Padding(
              padding: EdgeInsets.only(
                left: 20,),
              child: SvgPicture.asset('main_title.svg', width: 160,),
            ),


            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child:
                SvgPicture.asset('icx/user.svg'),
              ),
            ],


          ),
          body: Container(

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
            child: SvgPicture.asset('main_subtitle.svg',
              width: 100,
              alignment: Alignment.centerLeft,
            ),

          ),


          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xffF3F8FC),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(icon: SvgData(IconsPath.homeOff),
                activeIcon: SvgData(IconsPath.homeOn),
                label: '홈',
              ),
              BottomNavigationBarItem(
                icon: SvgData(IconsPath.stampCollectionOff),
                activeIcon: SvgData(IconsPath.stampCollectionOn),
                label: '나의여행스탬프',
              ),
              BottomNavigationBarItem(icon: SvgData(IconsPath.qrcodeOff),
                activeIcon: SvgData(IconsPath.qrcodeOn),
                label: '스탬프찍기',
              ),
              BottomNavigationBarItem(icon: SvgData(IconsPath.ebookOff),
                activeIcon: SvgData(IconsPath.ebookOn),
                label: '어촌힐링ebook',
              ),
              BottomNavigationBarItem(icon: SvgData(IconsPath.searchOff),
                activeIcon: SvgData(IconsPath.searchOn),
                label: '어촌계검색',
              ),
              BottomNavigationBarItem(icon: SvgData(IconsPath.shSearchOff),
                activeIcon: SvgData(IconsPath.shSearchOn),
                label: '상호금융영업점',
              ),
            ],

          ),


        ),


    onWillPop: () async {
      return false;
    });
}
}