import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {

  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dashboard'),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Text('Dashboard',
          style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}