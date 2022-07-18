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
          "FPengaturan Akun",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 30),
        child: Column(
          children: [
            TextField(
              enabled: _isDisabled,
              //  _isDisabled = false -> enbalbed = true
              // _isDisabled = true -> enable = false

              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Label',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isDisabled = _isDisabled;
                    buttonText = 'Simpan';
                  });
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red)),
                child: Text(buttonText)),
            SwitchListTile(
              value: _isDisabled,
              onChanged: (value) {
                setState(() {
                  _isDisabled = value;
                });
              },
              title: const Text('TextField is disabled'),
            ),
          ],
        ),
      ),
    );
  }
}
