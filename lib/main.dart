import 'package:flutter/material.dart';
import 'animator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: ' list Animator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.clear),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NEw()));
        },
      ),
    );
  }
}

class NEw extends StatefulWidget {
  @override
  _NEwState createState() => _NEwState();
}

class _NEwState extends State<NEw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('animated listview'),
        ),
        body: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return WidgetANimator(
              Card(
                margin: EdgeInsets.all(10),
                elevation: 5,
                child: Text(
                  index.toString(),
                  style: TextStyle(fontSize: 25),
                ),
              ),
            );
          },
        ));
  }
}
