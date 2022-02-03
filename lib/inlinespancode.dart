import 'package:clickabletextinp/separateString.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

List<InlineSpan> getData(String value) {
  var mylist = separateString(value);
  List<InlineSpan> temp = [];
  TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 20.0);
  TextStyle linkStyle = TextStyle(color: Colors.blue, fontStyle: FontStyle.italic);

  var re2 = RegExp("[a-zA-Z0-9 ]*");

  for (int i = 0; i < mylist.length; i++) {

    //'${mystring[0]}'//

    if(re2.hasMatch(mylist[i])){
      TextSpan(
          text: ''+mylist[i].toString(),
          style: linkStyle,
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              print(''+mylist[i].toString());
            });
    }
    else{
      TextSpan(text: ''+mylist[i].toString());
    }



    // temp.add(
    //   TextSpan(
    //     text: mylist[i],
    //     style: TextStyle(
    //       height: 1.0,
    //       color: Colors.white,
    //       fontSize: 20,
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    // );


  }
  return temp;
}