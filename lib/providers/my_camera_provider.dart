import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyCameraProvider extends ChangeNotifier {
  File _image;
  ImagePicker _imagePicker = ImagePicker();
  PickedFile _pickedFile;

  File get image =>_image;

  Future pickImageFromGallery() async {
    _pickedFile = await _imagePicker.getImage(source: ImageSource.gallery);
    _image = File(_pickedFile.path);
    notifyListeners();
  }

  Future captureImageByCamera() async {
    _pickedFile = await _imagePicker.getImage(source: ImageSource.camera);
    _image = File(_pickedFile.path);
    notifyListeners();
  }
}
