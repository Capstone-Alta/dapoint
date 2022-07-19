import 'package:dapoint/constants.dart';
import 'package:dapoint/models/api/api.dart';
import 'package:dapoint/models/api/voucherlmodel.dart';
import 'package:dapoint/views/home/widgets/voucher.dart';
import 'package:dapoint/views/voucher/rincian.dart';
import 'package:dapoint/views/voucher/widgets/alert_berhasil.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dapoint/views/voucher/voucher_view_model.dart';

class GridViewc extends StatefulWidget {
  GridViewc({Key? key}) : super(key: key);

  @override
  State<GridViewc> createState() => _GridViewcState();
}

class _GridViewcState extends State<GridViewc> {
  TextEditingController noHP = TextEditingController();

  @override
  Widget build(BuildContext context) {
    VoucherViewModel voucherVM = Provider.of(context, listen: false);

    return FutureBuilder<VoucherModel?>(
      future: Api.voucher(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          VoucherModel? userInfo = snapshot.data;
          if (userInfo != null) {
            Data userData = userInfo.data;
            return Container(
              height: 600,
              child: Container(
                child: Column(
                  children: [
                    Container(
                        height: 60,
                        child: TextField(
                          controller: noHP,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 22, horizontal: 10.9),
                              hintText: "No. Handphone",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              )),
                        )),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 340,
                      child: GridView.builder(
                        itemCount: 1,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 22,
                          crossAxisCount: 3,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                              onTap: (() {
                                if (voucherVM.listVoucher[index].stock == 0) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => CustomAlert()));
                                } else {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => RincianPage(
                                            voucher: userInfo,
                                            noHP: noHP.text,
                                          )));
                                }
                              }),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 0.2,
                                      blurRadius: 9,
                                      offset: const Offset(
                                          0, 5), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(userData.nominal.toString(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16.0,
                                          )),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text('RP.${userData.harga_point}',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 14.0, color: mainColor))
                                    ],
                                  ),
                                ),
                              ));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        }
        return Transform.scale(
            scale: 0.1,
            child: CircularProgressIndicator(
              color: mainColor,
            ));
      },
    );
  }
}
