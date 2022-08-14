

import 'package:flutter/material.dart';

class QrCode extends StatelessWidget {
  const QrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
        color: Colors.white,

      ),


        child:
          Center(child: Text('QRcode',)),
      );
  }
}
