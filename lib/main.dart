import 'package:flutter/material.dart';

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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
            ),
          ),
          backgroundColor: Color(0xffF3F8FC),


        title: Text(
            '어촌여행',
          style: TextStyle(
            fontWeight: FontWeight.bold,
              ),
            ),


              actions: [
              Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child:
              Icon(
                  Icons.person,
                  color: Color(0xff0068B7),
                  size:40),

              ),
              ],
              ),
              body: Container(),
              bottomNavigationBar: BottomAppBar(
                  child: Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(50),
                      ),
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
                          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),




              ],
            ),
          ),

        ),

      ),
    );
  }
}
