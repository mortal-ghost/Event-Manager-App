import 'package:event_manager_app/globals/decorations.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget> [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: textInputDecoration.copyWith(
                            hintText: 'Enter Email',
                            prefixIcon: const Icon(Icons.email)
                        ),
                        validator: (input) {
                          if (input!.isEmpty) {
                            return "Email cannot be empty";
                          }
                        },
                        onChanged: (input) {
                          setState(() {
                            _email = input;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: textInputDecoration.copyWith(
                            hintText: 'Enter Password',
                            prefixIcon: const Icon(Icons.lock)
                        ),
                        validator: (input) {
                          if (input!.length < 8) {
                            return "Password must have at least 8 characters";
                          }
                        },
                        onChanged: (input) {
                          setState(() {
                            _password = input;
                          });
                        },
                      )
                  ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
