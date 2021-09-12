import 'package:flutter/material.dart';

class Nanda extends StatefulWidget {
  const Nanda({Key? key}) : super(key: key);

  @override
  _NandaState createState() => _NandaState();
}

class _NandaState extends State<Nanda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NANDA Eletrônico'),
      ),
      body: Center(
        child: Text('Página em Construção'),
      ),
    );
  }
}
