separateString(String string) {

  var re = RegExp("");
  var re2 = RegExp("[a-zA-Z0-9 ]");

  var sptext = string.split(re);
  var lnth = sptext.length;


  final arr = [];
  arr.add("");

  int j = 0;
  String k="";
  int i=0;

  for(i=0;i<lnth;i++){
    if(re2.hasMatch(sptext[i])){

      if(k=='j'){
        j++;
        arr.add("");
      }
      arr[j]= "" + arr[j] +sptext[i];
      k="e";
    }else{
      if(k=='e'){
        j++;
        arr.add("");
      }
      arr[j]= ""+ arr[j] + sptext[i];
      k="j";
    }
  }

  // for(i=0;i<arr.length;i++){
  //   print("$i : "+arr[i]);
  // }



  return arr;
}
