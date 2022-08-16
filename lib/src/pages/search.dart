import 'package:contact/src/components/svg_src.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'login.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

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
      child: SvgPicture.asset(Deco.searchT, height: 20,),
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
      body: Center(
        child: DataTable(
    columns: const <DataColumn>[
          DataColumn(
          label: Text(
          'Name',
          style: TextStyle(fontStyle: FontStyle.italic),
          ),
          ),
          DataColumn(
          label: Text(
          'Age',
          style: TextStyle(fontStyle: FontStyle.italic),
          ),
          ),
          DataColumn(
          label: Text(
          'Role',
          style: TextStyle(fontStyle: FontStyle.italic),
          ),
          ),
          ],
          rows: const <DataRow>[
          DataRow(
          cells: <DataCell>[
          DataCell(Text('Sarah')),
          DataCell(Text('19')),
          DataCell(Text('Student')),
          ],
          ),
          DataRow(
          cells: <DataCell>[
          DataCell(Text('Janine')),
          DataCell(Text('43')),
          DataCell(Text('Professor')),
          ],
          ),
          DataRow(
          cells: <DataCell>[
          DataCell(Text('William')),
          DataCell(Text('27')),
          DataCell(Text('Associate Professor')),
    ],
    ),
    ],
    ),
      ),

    );

  }
}
