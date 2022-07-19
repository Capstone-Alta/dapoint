import 'package:dapoint/constants.dart';
import 'package:dapoint/models/api/api.dart';
import 'package:dapoint/models/api/profilemodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PengaturanAkun extends StatefulWidget {
  PengaturanAkun({Key? key}) : super(key: key);

  @override
  State<PengaturanAkun> createState() => _PengaturanAkunState();
}

class _PengaturanAkunState extends State<PengaturanAkun> {
  var buttonText = 'Click Me!';

  late TextEditingController _controller;
  bool _isReadonly = false;

  // Whether the text field is disabled or enabled
  bool _isDisabled = false;

  @override
  void initState() {
    _controller = TextEditingController(text: 'Default Text');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 44,
        bottom: PreferredSize(
            child: Container(
              color: Colors.black,
              height: 1.0,
            ),
            preferredSize: Size.fromHeight(1.0)),
        leading: GestureDetector(
            onTap: (() {
              Navigator.of(context).pop();
            }),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Pengaturan Akun",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder<User?>(
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
                    padding: EdgeInsets.only(right: 30, left: 30, top: 20),
                    child: Column(
                      children: [
                        TextField(
                          enabled: _isDisabled,
                          controller:
                              TextEditingController(text: userData.name),
                          decoration: const InputDecoration(
                            labelText: "Name",
                          ),
                        ),
                        TextField(
                          enabled: _isDisabled,
                          controller:
                              TextEditingController(text: userData.email),
                          decoration: const InputDecoration(
                            labelText: "Email",
                          ),
                        ),
                        TextField(
                          enabled: _isDisabled,
                          decoration: const InputDecoration(
                            labelText: "Phone",
                          ),
                        ),
                        SizedBox(height: 16),
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
                            onPressed: () {},
                            child: const Text(
                              'Edit',
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            }
          }
          return Center(
              child: CircularProgressIndicator(
            color: mainColor,
          ));
        },
      ),
    );
  }
}
