import 'package:event_manager_app/globals/decorations.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _email, _password;

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
                                      return "Please enter a valid email address";
                                    }
                                  },
                                )
                              ],
                            ),
                          ),
                        )
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
