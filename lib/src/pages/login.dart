import 'package:contact/src/components/svg_src.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Center(

          child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 50.0),

            child: Column(

              children: [
                SizedBox(
                  child: SvgSrc(Deco.loginT,height: 200,),
                ),

                SizedBox(
                  child: SvgSrc(Deco.divider),

                  ),

                // ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //         primary: Colors.black, ),
                //    onPressed: (){},
                //   icon: Icon(SvgSrc(Btn.))
                //   label: Text(
                //     'Apple로 계속',
                //     style: TextStyle(color: Colors.white) ,),),

                SizedBox(
                  height: 40,
                  child: IconButton(
                    icon:SvgSrc(Btn.apBtn,), onPressed: () {  },
                    iconSize: 300,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                  ),
                ),
                SizedBox(
                  height:20,
                ),//여백용
                SizedBox(
                  height: 40,
                  child: IconButton(
                    icon:SvgSrc(Btn.naBtn,), onPressed: () {  },
                    iconSize: 300,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                  ),
                ),
                SizedBox(
                  height:20,
                ),//여백용
                SizedBox(
                  height: 40,
                  child: IconButton(
                    icon:SvgSrc(Btn.kaBtn,), onPressed: () {  },
                    iconSize: 300,
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
