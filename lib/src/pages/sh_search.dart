import 'package:contact/src/components/svg_src.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'login.dart';

class shSearch extends StatelessWidget {
  const shSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
      toolbarHeight: 70,
      titleSpacing: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
        ),
      ),
      backgroundColor: Color(0xffF3F8FC),
      elevation: 0,


      title: Padding(
      padding: EdgeInsets.only(
      left: 20,),
      child: SvgPicture.asset(Deco.shT, height: 20,),
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
      body: Container()
    );

  }
}
