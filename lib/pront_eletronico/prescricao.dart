import 'dart:convert';
import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pdfLib;
import 'package:share_extend/share_extend.dart';
import 'package:path_provider/path_provider.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CyberSau - Prontuário Eletrônico - Anamnese',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String nome;
  late String idade;
  late String sexo;
  late String estadocivil;
  late String qpa;
  late String hda;
  late String hpp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Admissão de Paciente'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              //cabeçalho
              Card(
                child: Column(
                  children: [
                    Text(
                      'Sinergia Startup',
                      style: TextStyle(fontSize: 45.0),
                    ),
                    Row(
                      children: [
                        Text(
                          'Serviço de Enfermagem',
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ],
                    ),
                    Text(
                      'Formulário de Anamnese Clínica',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(height: 35),
                  ],
                ),
              ),

              //corpo-identificação
              Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                        labelText: 'Nome', border: OutlineInputBorder()),
                    onChanged: (val) {
                      setState(() {
                        nome = val;
                      });
                    },
                  ),
                  SizedBox(height: 15),
                  Column(
                    children: [
                      TextField(
                        decoration: const InputDecoration(
                            labelText: 'Idade', border: OutlineInputBorder()),
                        onChanged: (val) {
                          setState(() {
                            idade = val;
                          });
                        },
                      ),
                      SizedBox(height: 15),
                      TextField(
                        decoration: const InputDecoration(
                            labelText: 'Sexo', border: OutlineInputBorder()),
                        onChanged: (val) {
                          setState(() {
                            sexo = val;
                          });
                        },
                      ),
                      SizedBox(height: 15),
                      TextField(
                        decoration: const InputDecoration(
                            labelText: 'Estado Civil',
                            border: OutlineInputBorder()),
                        onChanged: (val) {
                          setState(() {
                            estadocivil = val;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),

              Divider(),

              //Queixa Principal
              TextField(
                  style: TextStyle(height: 4.0),
                  decoration: InputDecoration(
                      labelText: 'Queixa Principal',
                      border: OutlineInputBorder()),
                  onChanged: (val) {
                    setState(() {
                      qpa = val;
                    });
                  }),

              Divider(),

              //Histórico da Doença Atual
              TextField(
                style: TextStyle(height: 4.0),
                decoration: InputDecoration(
                  labelText: 'Histórico da Doença Atual',
                  border: OutlineInputBorder(),
                ),
                onChanged: (val) {
                  setState(() {
                    hda = val;
                  });
                },
              ),

              Divider(),

              //Histórico Patológico Pregresso
              TextField(
                style: TextStyle(height: 4.0),
                decoration: InputDecoration(
                  labelText: 'Histórico Patológico Pregresso',
                  border: OutlineInputBorder(),
                ),
                onChanged: (val) {
                  setState(() {
                    hpp = val;
                  });
                },
              ),

              Divider(),

              ElevatedButton(
                onPressed: () {
                  _creatPdf(context, nome, idade, estadocivil, qpa, hda, hpp);
                },
                child: Text('Salvar e Criar PDF'),
              )
            ],
          ),
        ),
      ),
    );
  }

  _creatPdf(
      contex, name, lastName, year, String qpa, String hda, String hpp) async {
    final pdfLib.Document pdf = pdfLib.Document();

    pdf.addPage(
      pdfLib.MultiPage(
        build: (context) => [
          pdfLib.Center(
            child: pdfLib.Column(
              children: [
                pdfLib.Text('Sinergia Startup'),
                pdfLib.Text('Serviço de Enfermagem'),
                pdfLib.Text('Formulário de Anamnese Clínica'),
              ],
            ),
          ),
          pdfLib.Text('Identificação:'),
          pdfLib.Row(
            children: [
              pdfLib.Text(nome),
              pdfLib.Text(idade),
              pdfLib.Text(sexo),
              pdfLib.Text(estadocivil)
            ],
          ),
          pdfLib.Divider(),
          pdfLib.Text('Queixa Principal:'),
          pdfLib.Text(qpa),
          pdfLib.Divider(),
          pdfLib.Text('Histórico da Doença Atual:'),
          pdfLib.Text(hda),
          pdfLib.Divider(),
          pdfLib.Text('Histórico Patologico Pregresso:'),
          pdfLib.Text(hpp),
        ],
      ),
    );

    List<int> bytes = await pdf.save();
    AnchorElement(
        href:
            "data:application/octet-stream;charset=utf-16le;base64,${base64.encode(bytes)}")
      ..setAttribute("download", "output.pdf")
      ..click();
  }
}
