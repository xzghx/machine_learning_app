import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Machine Learning app',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File _image;

  void _incrementCounter() {
    setState(() {}
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image != null
                ? Image.file(_image
            )
                : Icon(
              Icons.image,
              size: 100,
            ),
            RaisedButton(
              child: Text('PickImage/Capture'
              ),
              onPressed: _takePicture,
              onLongPress: _captureVideo,
            ),
            Text(
              'test',
              style: Theme
                  .of(context
              )
                  .textTheme
                  .headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _takePicture() {
  }

  void _captureVideo() {
  }
}
