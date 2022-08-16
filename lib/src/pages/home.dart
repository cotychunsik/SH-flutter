import 'package:contact/src/components/svg_src.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Color(0xffD5F2F2),

          appBar: AppBar(
        toolbarHeight: 70,
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
        child: SvgPicture.asset(Deco.title, width: 120,),
        ),


          actions: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child:
                IconButton(onPressed: (
                    ) {
                  Get.to(() => const Login());

                },
                  icon: SvgSrc(Etc.userB, ),),
              ),
              ],


        ),
      body: Column(
          children: [
            Container(

              decoration: BoxDecoration(

                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),

                ),

                color: Color(0xffF3F8FC),
              ),

              height: 80,
              width: double.infinity,
              padding: EdgeInsets.only(
                left: 40, bottom: 20,
              ),

              child:
              SvgPicture.asset(Deco.subText,
                width: 130,
                alignment: Alignment.topLeft, ),

            ),
            Container(
              alignment: Alignment.center,
              height: 420,
              padding: EdgeInsets.all(15),
              child: Image.asset('assets/deco_elements/map.png',
                fit: BoxFit.contain, ),

        ),

      ],
                     ),
    );
  }
}
