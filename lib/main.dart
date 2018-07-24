import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'src/app.dart';
import 'dart:async';

List<CameraDescription> cameras;

Future<Null> main() async {
  cameras = await availableCameras();
  runApp(new App());
}