import 'package:dapoint/views/voucher/widgets/cardname.dart';
import 'package:dapoint/views/voucher/widgets/header.dart';
import 'package:dapoint/views/voucher/widgets/jenisVoucher.dart';
import 'package:dapoint/views/voucher/widgets/kategori%20_operator.dart';
import 'package:flutter/material.dart';

class PulsaDataKategoriPage extends StatefulWidget {
  const PulsaDataKategoriPage({Key? key}) : super(key: key);

  @override
  State<PulsaDataKategoriPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PulsaDataKategoriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                const Header(),
                const SizedBox(
                  height: 64,
                ),
                Pilihan1(),
                const SizedBox(
                  height: 8,
                ),
                KategoriOperator(),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
            const CardName(),
          ],
        ),
      ),
    );
  }
}
