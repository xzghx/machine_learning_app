import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:machine_learning_app/providers/my_camera_provider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Provider.of<MyCameraProvider>(context).image != null
                ?Image.file(Provider.of<MyCameraProvider>(context).image)
                : Icon(
              Icons.image,
              size: 100,
            ),
            RaisedButton(
              child: Text('PickImage/Capture'),
              onPressed: Provider.of<MyCameraProvider>(context).pickImageFromGallery,
              onLongPress: Provider.of<MyCameraProvider>(context).captureImageByCamera,
            ),
          ],
        ),
      ),
    );
  }

}