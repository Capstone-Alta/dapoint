import 'package:dapoint/models/api/usermodel.dart';
import 'package:dapoint/reusable_widget/visible_password.dart';
import 'package:dapoint/views/account/register_view_model.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'reset_password.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isPasswordError = false;
  bool _obscurepasswordRegister = true;

  final _formKey = GlobalKey<FormState>();

  final _namaController = TextEditingController();

  final _noTeleponController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _namaController.dispose();

    _noTeleponController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final data = Provider.of<RegisterViewModel>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
                        'Register',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 23),
                      child: const Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: TextFormField(
                        cursorColor: Colors.black,
                        controller: _namaController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (name) {
                          if (name == null || name.isEmpty) {
                            return 'Name cannot be empty';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter Your Name',
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
                        'Email',
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
                        controller: _emailController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (email) {
                          if (email == null || email.isEmpty) {
                            return 'email cannot be empty';
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
                        'Mobile Number',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.black,
                        controller: _noTeleponController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (phone) {
                          if (phone == null || phone.isEmpty) {
                            return 'Phone cannot be empty';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter Your Mobile Number',
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
                        cursorColor: Colors.black,
                        obscureText: _obscurepasswordRegister,
                        controller: _passwordController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        onChanged: (password) {
                          if (password.isEmpty) {
                            setState(() {
                              isPasswordError = true;
                            });
                          } else if (password.length < 8) {
                            setState(() {
                              isPasswordError = true;
                            });
                          } else if (!RegExp(r'[a-z]').hasMatch(password)) {
                            setState(() {
                              isPasswordError = true;
                            });
                          } else if (!RegExp(r'[A-Z]').hasMatch(password)) {
                            setState(() {
                              isPasswordError = true;
                            });
                          } else {
                            setState(() {
                              isPasswordError = false;
                            });
                          }
                        },
                        validator: (password) {
                          if (password == null || password.isEmpty) {
                            return 'Password cannot be empty';
                          } else if (password.length < 8) {
                            return 'Must be at least 8 characters long';
                          } else if (!RegExp(r'[a-z]').hasMatch(password)) {
                            return 'Include at least 1 lowercase letter';
                          } else if (!RegExp(r'[A-Z]').hasMatch(password)) {
                            return 'Include at least 1 uppercase letter';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter Your Password',
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscurepasswordRegister =
                                    !_obscurepasswordRegister;
                              });
                            },
                            child: Icon(
                              _obscurepasswordRegister
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color:
                                  isPasswordError ? Colors.red : Colors.black,
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
                    if (data.state == RegisterViewState.loading)
                      Container(
                        margin: const EdgeInsets.only(
                          top: 30,
                          bottom: 35,
                        ),
                        alignment: Alignment.center,
                        child: const CircularProgressIndicator(
                          color: Color.fromRGBO(0, 143, 191, 1),
                        ),
                      ),
                    if (data.state != RegisterViewState.loading)
                      Container(
                        margin: const EdgeInsets.only(
                          top: 30,
                          bottom: 35,
                        ),
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(0, 143, 191, 1),
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () {
                            final form = _formKey.currentState!;
                            if (form.validate()) {
                              final dataRegister = UserModel(
                                username: _namaController.text,
                                email: _emailController.text,
                                phone: _noTeleponController.text,
                                password: _passwordController.text,
                              );
                              data.register(dataRegister).then(
                                (value) {
                                  if (data.state == RegisterViewState.none) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        duration: const Duration(seconds: 1),
                                        content: Container(
                                          width: double.infinity,
                                          height: 30,
                                          alignment: Alignment.center,
                                          child: const Text(
                                            "Register Succesfully",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        backgroundColor:
                                            Color.fromRGBO(0, 143, 191, 1),
                                      ),
                                    );
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Login(),
                                      ),
                                      (Route<dynamic> route) => false,
                                    );
                                  }

                                  if (data.state == RegisterViewState.error) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Container(
                                          width: double.infinity,
                                          height: 30,
                                          alignment: Alignment.center,
                                          child: const Text(
                                              "Something went wrong, please check your connection or try again later"),
                                        ),
                                        backgroundColor:
                                            Theme.of(context).errorColor,
                                      ),
                                    );
                                  }
                                  if (data.state == RegisterViewState.failed) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Container(
                                          width: double.infinity,
                                          height: 30,
                                          alignment: Alignment.center,
                                          child: const Text(
                                              "Register failed, please check the data again"),
                                        ),
                                        backgroundColor:
                                            Theme.of(context).errorColor,
                                      ),
                                    );
                                  }
                                },
                              );
                            }
                          },
                          child: const Text(
                            'Register',
                          ),
                        ),
                      ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Have an account ?',
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
                                    return const Login();
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
                              'Login',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
