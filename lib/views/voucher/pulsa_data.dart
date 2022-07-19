import 'package:dapoint/reusable_widget/cardname.dart';
import 'package:dapoint/reusable_widget/header.dart';
import 'package:dapoint/views/voucher/widgets/tab_bart.dart';
import 'package:flutter/material.dart';

class PulsaDataPage extends StatefulWidget {
  PulsaDataPage({Key? key}) : super(key: key);

  @override
  State<PulsaDataPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PulsaDataPage> {
  TextEditingController noHP = TextEditingController();
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
                TabBarPulsa(),
                const SizedBox(
                  height: 16,
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
