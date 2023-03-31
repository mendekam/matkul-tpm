import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../config/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: base,
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Image.network(
                  "https://media.tenor.com/PcW-wwaipH8AAAAM/kumala.gif"),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: TextFormField(
                style: TextStyle(color: primary),
                controller: usernameController,
                decoration: const InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )),
              ),
            ),
            Container(
              child: TextFormField(
                obscureText: true,
                style: TextStyle(color: primary),
                controller: passwordController,
                decoration: const InputDecoration(
                    alignLabelWithHint: true,
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    )),
              ),
            )
          ]),
        )));
  }
}
