import 'package:flutter/material.dart';
import 'package:Eventura/view/cadastro.dart';
import 'package:Eventura/view/feed.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool lembrar = false;
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Eventura"),
        centerTitle: true,
        backgroundColor: const Color(0xFF5DD9C1),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Color(0xFF121420)),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.stretch, // preencher todo espaçamento
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    "images/logo-eventura.png",
                    width: 200,
                    height: 150,
                  ),
                ),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      )
                    ]),
                TextField(
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                      hintText: "E-mail",
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6))),
                ),
                const SizedBox(
                  // adiciona espaçamento de itens
                  height: 20,
                ),
                TextField(
                  obscureText: _obscureText,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "Senha",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText =
                              !_obscureText; // ao click fica ou não visivel
                        });
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: lembrar,
                          onChanged: (bool? value) {
                            setState(() {
                              lembrar = value ?? false;
                            });
                          },
                        ),
                        const Text(
                          "Lembrar",
                          style: TextStyle(color: Color(0xFF5DD9C1)),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        // implementar função para recuperar senha
                      },
                      child: const Text(
                        "Esqueceu sua senha?",
                        style: TextStyle(
                          color: Color(0xFF5DD9C1),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Feed()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFF758BFD), // cor de fundo do botao
                        padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      "Entrar",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Não tem conta?",
                        style: TextStyle(color: Colors.white),
                      ),
                      MouseRegion(
                        cursor:
                            SystemMouseCursors.click, // aparecemouse clicavel
                        child: GestureDetector(
                          child: const Text(
                            " Cadastre-se!",
                            style: TextStyle(
                                color: Color(0xFF5DD9C1),
                                decoration: TextDecoration.underline),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Cadastro()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
