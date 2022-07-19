import 'package:dapoint/models/Transactions.dart';
import 'package:dapoint/models/api/voucherlmodel.dart';
import 'package:dapoint/models/voucher.dart';
import 'package:flutter/material.dart';

class TransactionsViewModel extends ChangeNotifier {
  //  List<Transactions> lst = [];
  List<Transactions> trans = [];

  // List<Transactions> get trans => this._trans;

  addTrans(VoucherModel voucher) {
    trans.add(Transactions(
        id: trans.length,
        user_id: 1,
        voucher_id: 2,
        status: "Pending",
        transaction_detail: voucher.data.nominal.toString(),
        transaction_date: DateTime.now(),
        updated_at: DateTime.now()));

    notifyListeners();
  }
}
