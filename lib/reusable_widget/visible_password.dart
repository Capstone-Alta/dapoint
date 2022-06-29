import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({Key? key, required this.controller})
      : super(key: key);
  final TextEditingController controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _isObsecure,
      cursorColor: Colors.black,
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 1.5,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 1.5,
          ),
        ),
        hintText: "Password",
        hintStyle: TextStyle(color: Color.fromARGB(255, 217, 217, 217)),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _isObsecure = !_isObsecure;
            });
          },
          icon: Icon(_isObsecure ? Icons.visibility_off : Icons.visibility),
        ),
      ),
    );
  }
}
