import 'package:dapoint/constants.dart';
import 'package:dapoint/models/fqa.dart';
import 'package:dapoint/models/voucher.dart';
import 'package:dapoint/views/voucher/transactions._view_model.dart';
import 'package:dapoint/views/voucher/widgets/alert_berhasil.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FaqPage extends StatefulWidget {
  FaqPage({Key? key}) : super(key: key);

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardD = new GlobalKey();
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    TransactionsViewModel transVM = Provider.of(context, listen: false);

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
            "FAQ",
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.only(right: 30, left: 30),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              ExpansionTileCard(
                key: cardD,
                title: Text("Apa itu Dapoint ?"),
                children: <Widget>[
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        "Dapoint adalah aplikasi pihak ke-3 Dimana aplikasi ini adalah aplikasi yang berfungsi untuk kamu melihat point dan menukarkan point dari hasil pembelanjaan kamu di supermarket Lokal daerah Kota Mataram yang Ber-mitra dengan Dapoint.",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTileCard(
                key: cardA,
                title: Text("Apa keuntungan saya menggunakan Dapoint?"),
                children: <Widget>[
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Text(
                        "kamu akan mendapatkan point dari setiap Transaksi pembelanjaanmu yang bisa di tukarkan dengan vouchers yang tersedia yaitu : Pulsa dan Data, E-money, dan Cash Out.",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTileCard(
                key: cardC,
                title: Text("Dimana saya dapat menggunakan Dapoint?"),
                children: <Widget>[
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Ada 3 Supermarket Kota mataram yang berkolaborasi dengan Dapoint yaitu : ",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(fontSize: 12),
                          ),
                          Text(
                            "1. Ruby supermarket",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(fontSize: 12),
                          ),
                          Text(
                            "2. Mario supermarket",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(fontSize: 12),
                          ),
                          Text(
                            "3. Niaga supermarket",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ExpansionTileCard(
                key: cardB,
                title: Text("Bagaimana cara Reedem Voucher di Dapoint?"),
                children: <Widget>[
                  Divider(
                    thickness: 1.0,
                    height: 1.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "1. Kamu bisa Masuk ke aplikasi Dapoint , lalu ke halaman Vouchers di aplikasi Dapoint.",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(fontSize: 12),
                          ),
                          Text(
                            "2. Setelah itu Kamu bisa memilih Voucher yang kamu inginkan.",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(fontSize: 12),
                          ),
                          Text(
                            "3. Selanjutnya Kamu bisa menukarkan voucher sesuai dengan point yang kamu miliki.",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                ?.copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
