import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String senha = "";

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: Image.asset('logo.png'),
              ),

              Center(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 400,
                      child: Column(
                        children: [
                          TextField(
                            onChanged: (text) {
                              email = text;
                            },
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Usuário",
                            ),
                          ),
                          SizedBox(height: 15),
                          TextField(
                            onChanged: (text) {
                              senha = text;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Senha de acesso",
                            ),
                          ),
                          SizedBox(height: 15),
                          ElevatedButton(
                            onPressed: () {
                              if (email == 'root' && senha == 'toor') {
                                Navigator.of(context).pushNamed('/home');
                              } else {
                                print("-Dados incorretos!-");
                              }
                            },
                            child: Text("Entrar"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // ignore: deprecated_member_use
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'background.png',
                fit: BoxFit.cover,
              )),
          Container(
            color: Colors.white.withOpacity(0.1),
          ),
          _body(),
        ],
      ),
    );
  }
}
