import 'package:card_swiper/card_swiper.dart';
import 'package:dapoint/models/jenis_voucher.dart';
import 'package:dapoint/views/voucher/widgets/pulsa_datakategori.dart';

import 'package:flutter/material.dart';

import '../../../src/image_carrousel_home.dart';
import 'voucher.dart';

class Kategori extends StatelessWidget {
  Kategori({Key? key}) : super(key: key);
  final List<JenisVoucher> jenisVoucher = JenisVoucherList.fetchVoucher();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30),
      height: 210,
      child: Column(
        children: [
          Card(
            color: Colors.blue,
            child: Container(
              height: 60,
              child: Center(
                child: ListTile(
                  leading: Container(
                    width: 30,
                    height: 30,
                    child: Image.asset(jenisVoucher[0].image),
                  ),
                  title: Text(jenisVoucher[0].jenisVoucher,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Navigator.of(context, rootNavigator: false).push(
                        MaterialPageRoute(
                            builder: (context) => PulsaDataKategoriPage(),
                            maintainState: false));
                  },
                ),
              ),
            ),
          ),
          Card(
            color: Colors.blue,
            child: Container(
              height: 60,
              child: Center(
                child: ListTile(
                  leading: Container(
                    width: 30,
                    height: 30,
                    child: Image.asset(jenisVoucher[1].image),
                  ),
                  title: Text(jenisVoucher[1].jenisVoucher,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white,
                  ),
                  // onTap: () {
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //       builder: (context) => PulsaDataKategoriPage()));
                  // },
                ),
              ),
            ),
          ),
          Card(
            color: Colors.blue,
            child: Container(
              height: 60,
              child: Center(
                child: ListTile(
                  leading: Container(
                    width: 30,
                    height: 30,
                    child: Image.asset(jenisVoucher[2].image),
                  ),
                  title: Text(jenisVoucher[2].jenisVoucher,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white,
                  ),
                  // onTap: () {
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //       builder: (context) => PulsaDataKategoriPage()));
                  // },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
