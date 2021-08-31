import 'package:flutter/material.dart';

import 'Pages/app_bottom_bar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppBottomBar(),
    );
  }
}
