import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          titleSpacing: 20,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.only(
          //     bottomLeft: Radius.circular(50),
          //   ),
          // ),
          backgroundColor: Color(0xffF3F8FC),


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


              bottomNavigationBar: SizedBox(
                  child: Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(50),
                      ),
                      color: Color(0xffF3F8FC),

                  ),
                    height: 100,



                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('/icx_text/home_t.svg',),
                              iconSize:50, ),
                        IconButton(icon: SvgPicture.asset('/icx_text/stamp_collection_t.svg',),
                        iconSize:50, onPressed: () {}),
                          IconButton(icon: SvgPicture.asset('/icx_text/qrcode_t.svg'),
                              iconSize:50, onPressed: () {}),
                          IconButton(icon: SvgPicture.asset('/icx_text/ebook_t.svg'),
                              iconSize:50, onPressed: () {}),
                          IconButton(icon: SvgPicture.asset('/icx_text/search_t.svg'),
                              iconSize:50, onPressed: () {}),
                          IconButton(icon: SvgPicture.asset('/icx_text/sh_symbol_t.svg'),
                              iconSize:50, onPressed: () {}),

              ],
            ),
          ),

        ),

      ),
    );
  }
}
