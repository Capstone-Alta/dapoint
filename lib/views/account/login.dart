import 'package:dapoint/constants.dart';
import 'package:dapoint/views/account/login_view_model.dart';
import 'package:dapoint/views/account/register.dart';
import 'package:dapoint/views/home/home.dart';
import 'package:dapoint/views/navigation/navigation.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isRemember = false;
  bool isValid = false;
  bool isPasswordError = false;
  bool isError = false;
  bool _obscurepasswordLogin = true;

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<LoginViewModel>(
        builder: (context, value, child) {
          return SafeArea(
            child: ListView(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/Mask group-1.png",
                    ),
                  ],
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: const Text(
                            'Hi , Welcome To Dapoint !',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: const Text(
                            'Happy to see you again , Please Login here',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 143, 191, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 45),
                          child: const Text(
                            'Email address',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            cursorColor: Colors.black,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: _emailController,
                            validator: (email) {
                              if (email == null || email.isEmpty) {
                                return 'Email cannot be empty';
                              } else if (!RegExp(
                                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                  .hasMatch(email)) {
                                return 'Enter email correctly';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Your Email Address',
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(0, 143, 191, 1),
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 16),
                          child: const Text(
                            'Password',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: TextFormField(
                            obscureText: _obscurepasswordLogin,
                            cursorColor: Colors.black,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            controller: _passwordController,
                            onChanged: (password) {
                              if (password.isEmpty) {
                                setState(() {
                                  isPasswordError = true;
                                });
                              } else {
                                setState(() {
                                  isError = false;
                                  isPasswordError = false;
                                });
                              }
                            },
                            validator: (password) {
                              if (password == null || password.isEmpty) {
                                return 'Password cannot be empty';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter Your Password',
                              filled: true,
                              errorText: isError ? 'Incorrect Password' : null,
                              fillColor: Colors.white,
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscurepasswordLogin =
                                        !_obscurepasswordLogin;
                                  });
                                },
                                child: Icon(
                                  _obscurepasswordLogin
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: isPasswordError || isError
                                      ? Colors.red
                                      : Colors.black,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                  width: 2,
                                  style: BorderStyle.solid,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(0, 143, 191, 1),
                                  style: BorderStyle.solid,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) =>
                                  //         const ForgotPassword(),
                                  //   ),
                                  // );
                                },
                                child: const Text(
                                  'Forget Password ?',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (value.state == LoginViewState.loading)
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            alignment: Alignment.center,
                            child: const CircularProgressIndicator(
                              color: Color.fromRGBO(0, 143, 191, 1),
                            ),
                          ),
                        if (value.state != LoginViewState.loading)
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            width: double.infinity,
                            height: 45,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromRGBO(0, 143, 191, 1),
                                onSurface: Color.fromRGBO(0, 143, 191, 1),
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: _formKey.currentState == null
                                  ? null
                                  : _formKey.currentState!.validate()
                                      ? () {
                                          final form = _formKey.currentState!;
                                          if (form.validate()) {
                                            value
                                                .login(_emailController.text,
                                                    _passwordController.text)
                                                .then(
                                              (data) {
                                                if (value.state ==
                                                    LoginViewState.none) {
                                                  Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const HomeNav(),
                                                    ),
                                                    (Route<dynamic> route) =>
                                                        false,
                                                  );
                                                }
                                                if (value.state ==
                                                    LoginViewState
                                                        .serverTimeout) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Container(
                                                        width: double.infinity,
                                                        height: 30,
                                                        alignment:
                                                            Alignment.center,
                                                        child: const Text(
                                                            "We couldn't connect to server, please try again later"),
                                                      ),
                                                      backgroundColor:
                                                          Theme.of(context)
                                                              .errorColor,
                                                    ),
                                                  );
                                                }
                                                if (value.state ==
                                                    LoginViewState.error) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Container(
                                                        width: double.infinity,
                                                        height: 50,
                                                        alignment:
                                                            Alignment.center,
                                                        child: const Text(
                                                            "Something went wrong, please check your connection or try again later"),
                                                      ),
                                                      backgroundColor:
                                                          Theme.of(context)
                                                              .errorColor,
                                                    ),
                                                  );
                                                }
                                                if (value.state ==
                                                    LoginViewState.failed) {
                                                  setState(() {
                                                    isError = true;
                                                  });
                                                }
                                              },
                                            );
                                          }
                                        }
                                      : null,
                              child: const Text(
                                'Login',
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don’t Have an account ?',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) {
                                return const SignUpScreen();
                              },
                              transitionsBuilder: (context, animation,
                                  secondaryAnimation, child) {
                                final tween = Tween(begin: 0.0, end: 1.0);
                                return ScaleTransition(
                                  scale: animation.drive(tween),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(25, 133, 49, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
