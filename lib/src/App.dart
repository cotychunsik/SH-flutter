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
              padding:EdgeInsets.only(
                left:20,),
              child: SvgPicture.asset('main_title.svg', width:160,),
            ),



            actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child:
                SvgPicture.asset('icx/user.svg'),
              ),
            ],


          ),
          body: Container(decoration: BoxDecoration(
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
              width:100,
              alignment: Alignment.centerLeft,
            ),

          ),


          bottomNavigationBar:  Container(



            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(50),
              ),
              color: Color(0xffF3F8FC),

            ),
            height: 100,
            child:BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: SvgData(IconsPath.homeOff),
                activeIcon: SvgData(IconsPath.homeOn),
                label: 'home',
                ),
                BottomNavigationBarItem(icon: SvgData(IconsPath.homeOff),
                  activeIcon: SvgData(IconsPath.homeOn),
                  label: 'home',
                ),
                BottomNavigationBarItem(icon: SvgData(IconsPath.homeOff),
                  activeIcon: SvgData(IconsPath.homeOn),
                  label: 'home',
                ),
                BottomNavigationBarItem(icon: SvgData(IconsPath.homeOff),
                  activeIcon: SvgData(IconsPath.homeOn),
                  label: 'home',
                ),
                BottomNavigationBarItem(icon: SvgData(IconsPath.homeOff),
                  activeIcon: SvgData(IconsPath.homeOn),
                  label: 'home',
                ),
                BottomNavigationBarItem(icon: SvgData(IconsPath.homeOff),
                  activeIcon: SvgData(IconsPath.homeOn),
                  label: 'home',
                ),
              ],

          ),


          )

          //
          //             child: Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //                 children: [
          //                   IconButton(
          //                     onPressed: () {},
          //                     icon: SvgPicture.asset('/icx_text/home_t.svg',),
          //                       iconSize:50, ),
          //                 IconButton(icon: SvgPicture.asset('/icx_text/stamp_collection_t.svg',)
          //                     ,
          //                 iconSize:50, color: Colors.black, onPressed: () {}),
          //                   IconButton(icon: SvgPicture.asset('/icx_text/qrcode_t.svg'),
          //                       iconSize:50, onPressed: () {}),
          //                   IconButton(icon: SvgPicture.asset('/icx_text/ebook_t.svg'),
          //                       iconSize:50, onPressed: () {}),
          //                   IconButton(icon: SvgPicture.asset('/icx_text/search_t.svg'),
          //                       iconSize:50, onPressed: () {}),
          //                   IconButton(icon: SvgPicture.asset('/icx_text/sh_symbol_t.svg'),
          //                       iconSize:50, onPressed: () {}),

          // ],
        ),
      onWillPop: () async{
          return false;
      },
      );


  }
}
