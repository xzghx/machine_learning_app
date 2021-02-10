import 'package:flutter/material.dart';
import 'package:machine_learning_app/providers/my_camera_provider.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MyCameraProvider>(
          create: (_) => MyCameraProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Machine Learning app',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
