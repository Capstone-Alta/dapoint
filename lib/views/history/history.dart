import 'package:dapoint/constants.dart';
import 'package:dapoint/viewModels/transactions._view_model.dart';
import 'package:dapoint/views/history/widgets/status_pending.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    TransactionsViewModel transVM = Provider.of<TransactionsViewModel>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          title: Text("History"),
          centerTitle: true,
        ),
        body: ListView(
          children: [StatusPending()],
          //   children: transVM.
          //       .map(
          //         (e) => StatusPending(
          //           e,
          //           transactions: e,
          //         ),
          //       )
          //       .toList(),
          // ),
        ));
  }
}
