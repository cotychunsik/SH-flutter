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
          toolbarHeight: 197,
          titleSpacing: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
            ),
          ),
          backgroundColor: Color(0xffF3F8FC),


              title: Text(
                  '어촌여행',
                style: TextStyle(fontWeight: FontWeight.bold,),
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
                width:50, height: 50, color: Colors.blue,
                margin: EdgeInsets.all(20),
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
                        IconButton(icon: Icon(Icons.home_rounded), onPressed: () {}),
                          IconButton(icon: Icon(Icons.workspace_premium), onPressed: () {}),
                          IconButton(icon: Icon(Icons.qr_code_scanner_rounded), onPressed: () {}),
                          IconButton(icon: Icon(Icons.collections_bookmark_rounded), onPressed: () {}),
                          IconButton(icon: Icon(Icons.manage_search_rounded), onPressed: () {}),
                          IconButton(icon: SvgPicture.asset(
                              'icx/symbol.svg',
                          width:36,
                          height:25,
                          ), onPressed: () {}),
              ],
            ),
          ),

        ),

      ),
    );
  }
}
