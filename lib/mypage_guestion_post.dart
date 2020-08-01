import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text box',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Circle'),
    );
  }
}


class _MyHomePageState extends State<MyHomePage> {
  String m_inputedValue = "";



  void _handlePressed() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[

              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Text('質問箱',
                    style:  TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 23),
                  ),
                ),

              ),

          TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),

                  hintText: "匿名で質問を送ろう！",
                ),
                maxLines: 9,

                // 最大入力可能文字数
                maxLength: 200,

                // 変更を即時反映する。
                onChanged: (text) {
                  if (text.length > 0) {
                    // 入力値があるなら、それを反映する。
                    setState(() {
                      this.m_inputedValue = text;
                    });
                  }
                  else {
                    setState(() {
                      this.m_inputedValue = "入力してください。";
                    });
                  }
                },
              ),
              FlatButton(
                onPressed: _handlePressed,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Text(
                  '匿名で質問を送る',
                  style: TextStyle(
                      color:Colors.white,
                      fontSize: 20.0
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

