import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Hello Ngo Dang Tan",
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyHomePage(title: "Hello app !"),
    );

  }
  
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();




}

class _MyHomePageState extends State<MyHomePage>{
  int _counter = 0;

  void _incrementCounter(){
    setState(() {
      ++ _counter;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("The button has been pressed"),
            Text("$_counter times",
              style: new TextStyle(fontSize: 30.0),
            )]
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 24.0, bottom: 24.0),
        child: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: "Increment",
          child: Icon(Icons.add),
        ),
      ),
    );
  }



}