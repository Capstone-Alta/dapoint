import 'package:dapoint/constants.dart';
import 'package:dapoint/models/api/api.dart';
import 'package:dapoint/models/api/profilemodel.dart';
import 'package:flutter/material.dart';

class CardName extends StatelessWidget {
  const CardName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 120,
      left: 15,
      right: 15,
      child: Container(
        width: 368,
        height: 146,
        padding: const EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: const Color.fromARGB(255, 0, 143, 191),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 25),
                child: CircleAvatar(
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Color.fromARGB(255, 140, 145, 150),
                  ),
                  radius: 35,
                  backgroundColor: Color.fromARGB(255, 228, 229, 231),
                ),
              ),
              FutureBuilder<User?>(
                future: Api.profile(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    User? userInfo = snapshot.data;
                    if (userInfo != null) {
                      Data userData = userInfo.data;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 35.0, bottom: 10),
                            child: Text(
                              userData.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            userData.total_point.toString(),
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 193, 7),
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      );
                    }
                  }
                  return Visibility(
                      maintainAnimation: true,
                      maintainSize: true,
                      maintainState: true,
                      child: CircularProgressIndicator(
                        color: mainColor,
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
