import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(aplicativo_frases());
}

class aplicativo_frases extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: pag_inicial(),
      debugShowCheckedModeBanner: false,
    );
  }
}
