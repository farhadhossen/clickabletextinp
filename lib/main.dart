import 'package:clickabletextinp/inlinespancode.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String vlue= "好気性グラム陰性短桿菌。グラム染色上は大腸菌などの腸内細菌科と比べて小さく、グラム陰性双球菌のように見えることもある。グラム陰性球菌のMoraxella catarrhalisと似た形状であり鑑別は困難であるが、Moraxella catarrhalisは丸みを帯びた形状にあるのに対して、Acinetobacter spp.はややずんぐりした形状である。";


  @override
  Widget build(BuildContext context) {

    TextStyle defaultStyle = TextStyle(color: Colors.grey, fontSize: 20.0);
    TextStyle linkStyle = TextStyle(color: Colors.blue, fontStyle: FontStyle.italic);

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Container(
          child: RichText(
              text:TextSpan(
                children: getData(vlue),
              )
          ),
        ),
      ),
    );
  }
}
