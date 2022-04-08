import 'package:event_manager_app/globals/decorations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _email, _password;
  bool showPass = false;

  Widget eyeIcon() {
    if (showPass) {
      return const Icon(Icons.remove_red_eye_outlined);
    } else {
      return const Icon(Icons.remove_red_eye);
    }
  }

  void togglePass() => setState(() {
    showPass = !showPass;
  });

  @override
  Widget build(BuildContext context) {
    final Map screenSize = {
      "width": MediaQuery.of(context).size.width,
      "height": MediaQuery.of(context).size.height
    };
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          return SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  width: screenSize['width'],
                  height: screenSize['height'],
                  child: const Image(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraint.maxHeight
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: screenSize['width']*0.1
                          ),
                          height: screenSize['height']*0.45,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0)
                            ),
                            color: Colors.white
                          ),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: screenSize['height']*0.05,
                                ),
                                TextFormField(
                                  decoration: textInputDecoration.copyWith(
                                    labelText: "Email",
                                    prefixIcon: const Icon(Icons.email)
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  textInputAction: TextInputAction.next,
                                  onChanged: (input) {
                                    _email = input;
                                  },
                                  validator: (input) {
                                    if (input!.isEmpty) {
                                      return "Please enter your Email";
                                    } else if (!input.contains("@") || !input.contains(".") ) {
                                      return "Please enter a valid email address!";
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: screenSize['height'] * 0.02,
                                ),
                                TextFormField(
                                  decoration: textInputDecoration.copyWith(
                                      labelText: "Password",
                                      prefixIcon: const Icon(Icons.lock),
                                      suffixIcon: IconButton(
                                          icon: eyeIcon(),
                                        onPressed: togglePass,
                                      )
                                  ),
                                  obscureText: showPass,
                                  textInputAction: TextInputAction.next,
                                  onChanged: (input) {
                                    _password = input;
                                  },
                                  validator: (input) {
                                    if (input!.isEmpty) {
                                      return "Please enter your Password";
                                    } else if (input.length < 8 ) {
                                      return "Password must be of minimum 8 characters!";
                                    }
                                  },
                                ),
                                SizedBox(
                                  height: screenSize['height']*0.03,
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Container(
                                      padding: const EdgeInsets.all(10.0),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                      ),
                                      child: const Text(
                                          "Login",
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold
                                          ),
                                      ),
                                    )
                                ),
                                SizedBox(
                                  height: screenSize['height']*0.025,
                                ),
                                SignInButton(
                                  Buttons.Google,
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  height: screenSize['height']*0.02,
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text("Don't have an account? Sign Up!")
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
