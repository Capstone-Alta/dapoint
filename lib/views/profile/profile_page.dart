import 'package:flutter/material.dart';
import 'package:dapoint/views/profile/widgets/cardname.dart';
import 'package:dapoint/views/profile/widgets/header.dart';
import 'package:dapoint/views/voucher/widgets/jenisVoucher.dart';
import 'package:dapoint/views/profile/widgets/ketegori.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ProfilePage> {
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
