import 'package:clickabletextinp/separateString.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

List<InlineSpan> getData(String value) {
  var mylist = separateString(value);
  List<InlineSpan> temp = [];
  TextStyle linkStyle = TextStyle(color: Colors.blue, fontStyle: FontStyle.italic);

  var re2 = RegExp("[a-zA-Z0-9 ]+");



  for (int i = 0; i < mylist.length; i++) {




    if(re2.hasMatch(mylist[i])){


      temp.add(
      TextSpan(
          text: ''+mylist[i].toString(),
          style: linkStyle,
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              print(''+mylist[i].toString());
            })
      );
    }
    else{


      temp.add(
      TextSpan(text: ''+mylist[i].toString())
      );
    }



  }
  return temp;
}