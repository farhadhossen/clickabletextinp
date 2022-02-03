separateString(String string) {

  var string = "好気性グラム陰性短桿菌。グラム染色上は大腸菌などの腸内細菌科と比べて小さく、グラム陰性双球菌のように見えることもある。グラム陰性球菌のMoraxella catarrhalisと似た形状であり鑑別は困難であるが、Moraxella catarrhalisは丸みを帯びた形状にあるのに対して、Acinetobacter spp.はややずんぐりした形状である。";
  var re = RegExp("");
  var re2 = RegExp("[a-zA-Z0-9 ]");

  var sptext = string.split(re);
  var lnth = sptext.length;

//   List<String> arr= [].fillRange(lnth,0);

//   final arr = List<String>.filled(lnth, "");
  final arr = [];
  arr.add("");

  int j = 0;
  String k="";
  int i=0;

  for(i=0;i<lnth;i++){
    if(re2.hasMatch(sptext[i])){
      print("english \n");
      if(k=='j'){
        j++;
        arr.add("");
      }
      arr[j]= "" + arr[j] +sptext[i];
      k="e";
    }else{
      print("chinese \n");
      if(k=='e'){
        j++;
        arr.add("");
      }
      arr[j]= ""+ arr[j] + sptext[i];
      k="j";
    }
  }

  for(i=0;i<arr.length;i++){
    print("$i : "+arr[i]);
  }

  print(sptext);
  print("\n $lnth");

  return arr;
}
