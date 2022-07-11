import 'package:dapoint/constants.dart';
import 'package:flutter/material.dart';

class CustomAlert extends StatelessWidget {
  const CustomAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        alignment: Alignment.center,
        color: mainColor,
        height: 276,
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Container(
              width: 158,
              height: 127,
              child: Image.asset(
                "images/alert.png", width: double.infinity,
                // height: 1,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Your Payment is Success",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Your Payment is Success",
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 16),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              child: Text('Okay'),
              onPressed: () => {Navigator.of(context).pop()},
            ),
          ],
        ),
      ),
    );
  }
}
