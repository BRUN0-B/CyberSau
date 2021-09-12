import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: Text('CyberSau - Iniciativa de Saúde Cibernética'),
              backgroundColor: Colors.indigo[700],
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
                tooltip: 'Menu',
              ) //IconButton
              ), //AppBar
          body: Center(
            child: Container(
                child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: Container(
                            width: 180,
                            height: 200,
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/escalometro');
                              },
                              child: Text(
                                'Calculadoras e Escalas',
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.indigo[900],
                            ), //BoxDecoration
                          ), //Container
                        ), //Flexible
                        SizedBox(
                          width: 10,
                        ), //SizedBox
                        Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: Container(
                              width: 180,
                              height: 200,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Curativos e Feridas',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.indigo[600],
                              ) //BoxDecoration
                              ), //Container
                        ) //Flexible
                      ], //<Widget>[]
                      mainAxisAlignment: MainAxisAlignment.center,
                    ), //Row
                  ), //Flexible
                  SizedBox(
                    height: 10,
                  ), //SixedBox
                  Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: Container(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/anamnese');
                        },
                        child: Text(
                          'Prontuário Eletrônico',
                          style: TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                      width: 380,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.indigo[400],
                      ), //BoxDecoration
                    ), //Container
                  ), //Flexible
                  SizedBox(
                    height: 10,
                  ), //SixedBox
                  Flexible(
                    flex: 2,
                    fit: FlexFit.loose,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 2,
                          fit: FlexFit.loose,
                          child: Container(
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Outras Ferramentas',
                                style: TextStyle(
                                    fontSize: 16.0, color: Colors.white),
                              ),
                            ),
                            width: 180,
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.indigo,
                            ), //BoxDecoration
                          ), //Container
                        ), //Flexible
                        SizedBox(
                          width: 10,
                        ), //SizedBox
                        Flexible(
                          flex: 2,
                          fit: FlexFit.loose,
                          child: Container(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/nandae');
                                },
                                child: Text(
                                  'NANDA-e',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.white),
                                ),
                              ),
                              width: 180,
                              height: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.indigo[800],
                              ) //BoxDecoration
                              ), //Container
                        ) //Flexible
                      ], //<Widget>[]
                      mainAxisAlignment: MainAxisAlignment.center,
                    ), //Row
                  ), //Flexible
                ], //<Widget>[]
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
              ), //Column
            ) //Padding
                ), //Container
          ) //Container
          ), //Scaffold

      debugShowCheckedModeBanner: false,
    );
  } //MaterialApp
}
