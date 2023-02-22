// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'pages/complex_example.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Hawk',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Hawk'),
      ),
      body: Center(
        /*
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("hawk head.png"),
            fit: BoxFit.cover,
          ),
        ),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20.0),
            const SizedBox(height: 12.0),
            ElevatedButton(
              child: Text('Sign Up'),
              onPressed: null,
            ),
            const SizedBox(height: 12.0),
            ElevatedButton(
              child: Text('Sign In'),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => TableComplexExample()),
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
