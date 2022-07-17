import 'package:dapoint/constants.dart';
import 'package:dapoint/models/voucher.dart';
import 'package:dapoint/views/voucher/transactions._view_model.dart';
import 'package:dapoint/views/voucher/widgets/alert_berhasil.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RincianPage extends StatelessWidget {
  RincianPage({required this.voucher, required this.noHP, Key? key})
      : super(key: key);
  Voucher voucher;
  final String noHP;

  @override
  Widget build(BuildContext context) {
    TransactionsViewModel transVM = Provider.of(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 44,
        backgroundColor: mainColor,
        leading: GestureDetector(
            onTap: (() {
              Navigator.of(context).pop();
            }),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          "Rincian Pesanan",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: ListView(children: [
        ListTile(
          contentPadding: EdgeInsets.only(right: 30, left: 30),
          leading: Container(
            width: 24,
            height: 30,
            child: Image.asset("icon_voucher/pulsa.png"),
          ),
          title: Text("Telkomsel"),
          trailing: Text(
            voucher.description,
            style: TextStyle(color: Color.fromRGBO(76, 175, 80, 1)),
          ),
        ),
        Divider(
          color: Color.fromRGBO(147, 145, 145, 1),
          thickness: 1,
        ),
        ListTile(
          contentPadding: EdgeInsets.only(right: 30, left: 30),
          title: Text("No. Handphone"),
          trailing: Text(noHP),
        ),
        Divider(
          color: Color.fromRGBO(147, 145, 145, 1),
          thickness: 1,
        ),
        ListTile(
          contentPadding: EdgeInsets.only(right: 30, left: 30),
          title: Text("Penukaran"),
          trailing: Text(
            "RP.${voucher.price}",
            style: TextStyle(color: Color.fromRGBO(177, 20, 27, 1)),
          ),
        ),
        Divider(
          color: Color.fromRGBO(147, 145, 145, 1),
          thickness: 1,
        ),
        SizedBox(
          height: 531,
        ),
        Padding(
          padding: EdgeInsets.only(right: 30, left: 30),
          child: SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                transVM.addTrans(voucher);
                showDialog(
                    context: context,
                    builder: (BuildContext context) => CustomAlert());
              },

              // onPressed: () {showDialog<String>(
              //   context: context,
              //   builder: (BuildContext context) => CustomAlert(),
              // }

              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(mainColor),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(vertical: 22)),
                  textStyle: MaterialStateProperty.all(TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ))),
              child: Text("OK"),
            ),
          ),
        ),
      ]),
    );
  }
}
