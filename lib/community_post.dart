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

  List<String> _items = ["就活", "海外", "ボランティア",'OB・OG','JCC','その他'];
  String _selectedItem = "海外";

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
                 child: Text('カテゴリー',
                   style:  TextStyle(fontWeight: FontWeight.bold),
                 ),
               ),

              ),

            Align(
              alignment: Alignment(-0.8,-0.6),
              child: DropdownButton<String>(
                value: _selectedItem,
                onChanged: (String newValue) {
                  setState(() {
                    _selectedItem = newValue;
                  });
                },
                selectedItemBuilder: (context) {
                  return _items.map((String item) {
                   return Text(
                      item,
                      style: TextStyle(color: Colors.black)
                    );

                  }).toList();

                },
                items: _items.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: item == _selectedItem
                          ? TextStyle(fontWeight: FontWeight.bold)
                          : TextStyle(fontWeight: FontWeight.normal),

                    ),
                  );
                }).toList(),
              ),
            ),
              
              // 入力用テキストボックス
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('ハッシュタグ',
                    style:  TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "＃ハッシュタグを入力",
                ),
                maxLines: 1,


                // 最大入力可能文字数
                maxLength: 10,

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
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('内容',
                    style:  TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),

                  hintText: "シェアしたい内容を入力",
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
                  '投稿する',
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

