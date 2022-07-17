import 'package:flutter/material.dart';

Image logoWidget(String imageName) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 150,
    height: 150,
  );
}

TextFormField reusableTextField(
    String text, bool isPasswordType, TextEditingController textController) {
  return TextFormField(
    controller: textController,
    obscureText: isPasswordType,
    enableSuggestions: isPasswordType,
    autocorrect: isPasswordType,
    cursorColor: Colors.black,
    style: const TextStyle(
      color: Colors.black,
    ),
    decoration: InputDecoration(
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
          width: 1.5,
        ),
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
          width: 1.5,
        ),
      ),
      hintText: text,
      hintStyle: const TextStyle(color: Color.fromARGB(255, 217, 217, 217)),
    ),
    keyboardType: isPasswordType
        ? TextInputType.visiblePassword
        : TextInputType.emailAddress,
  );
}

Container accountButton(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 45,
    margin: const EdgeInsets.fromLTRB(12, 5, 10, 12),
    child: ElevatedButton(
      onPressed: () {
        onTap();
      },
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.lightBlue;
            }
            return const Color.fromARGB(255, 0, 143, 191);
          },
        ),
      ),
    ),
  );
}

Container googleButton(BuildContext context, String title, Function onTap) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 45,
    margin: const EdgeInsets.fromLTRB(12, 0, 10, 12),
    child: ElevatedButton.icon(
      onPressed: () {
        onTap();
      },
      icon: Image.asset("assets/images/google.png"),
      label: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.lightBlue;
            }
            return const Color.fromARGB(255, 0, 143, 191);
          },
        ),
      ),
    ),
  );
}
