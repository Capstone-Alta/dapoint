import 'package:dapoint/reusable_widget/cardname.dart';

import 'package:dapoint/reusable_widget/header.dart';
import 'package:dapoint/views/home/widgets/offer.dart';
import 'package:dapoint/views/home/widgets/promotion.dart';
import 'package:dapoint/views/home/widgets/voucher.dart';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                  height: 50,
                ),
                Voucher(),
                const Promotion(),
                const SizedBox(
                  height: 10,
                ),
                const Offer()
              ],
            ),
            const CardName(),
          ],
        ),
      ),
    );
  }
}
