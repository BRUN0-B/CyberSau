import 'package:cybersau/escalometro.dart';
import 'package:cybersau/home_page.dart';
import 'package:cybersau/nanda.dart';
import 'package:cybersau/pront_eletronico/anamnese.dart';
import 'package:flutter/material.dart';
import 'package:cybersau/login_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CyberSau',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/anamnese',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => MyHomePage(),
        '/escalometro': (context) => menuEscalas(),
        '/anamnese': (context) => Home(),
        '/nandae': (context) => Nanda(),
      },
    );
  }
}
