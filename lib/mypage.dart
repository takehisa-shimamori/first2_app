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
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(

            children: <Widget>[
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset('images/sample.jpg'),
                ),
              ),


              FlatButton(
                onPressed: _handlePressed,
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Text(
                  '質問を送る',
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
                  '回答を見る',
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

