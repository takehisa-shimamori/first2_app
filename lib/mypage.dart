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
      home: MyHomePage(title: '島森 武久'),
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
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(

            children: <Widget>[
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset('images/sample2.jpeg'),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('氏名',
                    style:  TextStyle(fontWeight: FontWeight.normal),
                  ),
                ),

              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('島森 武久',
                    style:  TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 17),
                  ),
                ),

              ),
             Padding(
              padding: EdgeInsets.only(top: 7.0),
              child:
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('CC名',
                    style:  TextStyle(fontWeight: FontWeight.normal),
                  ),
                ),

              ),
             ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('SHANTI SHANTI',
                    style:  TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),

              ),

              Padding(
                padding: EdgeInsets.only(top: 7.0),
                child:
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('現役3年',
                      style:  TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ),

                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('2020年卒業予定',
                    style:  TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),

              ),
              Padding(
                padding: EdgeInsets.only(top: 7.0),
                child:
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('派遣経験',
                      style:  TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ),

                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('2020年 夏 カンボジア\n2021年 夏 フィリピン',
                    style:  TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),

              ),

              Padding(
                padding: EdgeInsets.only(top: 7.0),
                child:
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('職歴',
                      style:  TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ),

                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('楽天株式会社',
                    style:  TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),

              ),



        Padding(
          padding: EdgeInsets.only(top: 25.0),
          child:
              FlatButton(
                onPressed: _handlePressed,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Text(
                  ' 質問を送る ',
                  style: TextStyle(
                      color:Colors.white,
                      fontSize: 20.0
                  ),
                ),
              ),
        ),
              FlatButton(
                onPressed: _handlePressed,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Text(
                  ' 回答を見る ',
                  style: TextStyle(
                      color:Colors.white,
                      fontSize: 20.0
                  ),
                ),
              ),
              FlatButton(
                onPressed: _handlePressed,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Text(
                  'チャット送信',
                  style: TextStyle(
                      color:Colors.white,
                      fontSize: 20.0
                  ),
                ),
              ),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset('images/sns.png'),
                ),
              ),
            ],
          ),
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

