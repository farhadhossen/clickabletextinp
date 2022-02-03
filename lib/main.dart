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
          child:  RichText(
            text: TextSpan(
              style: defaultStyle,
              children: <TextSpan>[
                TextSpan(text: '好気性グラム陰性短桿菌。グラム染色上は大腸菌などの 腸内細菌科と比べて小さく、グラム陰性双球菌のように 見えることもある。グラム陰性球菌の'),
                TextSpan(
                    text: 'Moraxella catarrhalis',
                    style: linkStyle,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('Moraxella catarrhalis');
                      }),
                TextSpan(text: ' と似た形状であり鑑別は困難であるが、 Moraxella catarrhalisは丸みを帯びた形状にあるのに対し て、 '),
                TextSpan(
                    text: 'Acinetobacter app',
                    style: linkStyle,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print('Acinetobacter app"');
                      }),
                TextSpan(text:'はややずんぐりした形状である。'),
              ],
            ),
          ),
        )
      ),
    );
  }
}
