import 'package:contact/src/components/svg_src.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'login.dart';

class Ebook extends StatelessWidget {
  const Ebook({Key? key}) : super(key: key);

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
      child: SvgPicture.asset(Deco.ebookT, height: 20,),
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
      body:  Center(
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                '어촌체험활동',
                style: TextStyle(fontStyle: FontStyle.normal),
              ),
            ),

            DataColumn(
              label: Text(
                '발행일',
                style: TextStyle(fontStyle: FontStyle.normal ),
              ),
            ),
          ],
          rows: const <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('경인바다 : 강화도')),
                DataCell(Text('2022년 6월')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Janine')),
                DataCell(Text('2022년 6월')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('2022년 6월')),
              ],
            ),
          ],
        ),
      ),

    );

  }
}
