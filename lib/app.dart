import 'package:flutter/material.dart';

import 'home.dart';
import 'statefull.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StatefulPage(),
    );
  }
}