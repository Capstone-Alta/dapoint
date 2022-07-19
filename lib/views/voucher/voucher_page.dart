import 'package:dapoint/reusable_widget/cardname.dart';
import 'package:dapoint/reusable_widget/header.dart';
import 'package:dapoint/views/voucher/widgets/jenisVoucher.dart';
import 'package:dapoint/views/voucher/widgets/ketegori.dart';
import 'package:flutter/material.dart';

class VoucherPage extends StatelessWidget {
  const VoucherPage({Key? key}) : super(key: key);

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
                Pilihan(),
                const SizedBox(
                  height: 8,
                ),
                Kategori()
              ],
            ),
            const CardName(),
          ],
        ),
      ),
    );
  }
}
