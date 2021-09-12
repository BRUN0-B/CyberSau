//inicia a pagina
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class menuEscalas extends StatelessWidget {
  const menuEscalas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Escalometro - Escalas de Avaliação em Saúde'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              width: 250,
              height: 100,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Cálculo de Índice de Massa Corpórea')),
            ),
            Divider(),
            SizedBox(
                width: 250,
                height: 100,
                child: ElevatedButton(
                    onPressed: () {}, child: Text('Escala de Glasgow'))),
            Divider(),
            SizedBox(
                width: 250,
                height: 100,
                child: ElevatedButton(
                    onPressed: () {}, child: Text('Escala de Morse'))),
          ],
        ),
      ),
    );
  }
}
//desenha menu de opções
