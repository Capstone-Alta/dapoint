import 'package:dapoint/models/Transactions.dart';
import 'package:dapoint/models/voucher.dart';
import 'package:flutter/material.dart';

class TransactionsViewModel extends ChangeNotifier {
  List<Transactions> _trans = [];

  List<Transactions> get trans => this._trans;

  set trans(List<Transactions> value) {
    this._trans = value;
    notifyListeners();
  }

  addTrans(Voucher voucher) {
    _trans.add(Transactions(
        id: _trans.length,
        user_id: 1,
        voucher_id: 2,
        status: "Pending",
        transaction_detail: "",
        transaction_date: DateTime.now(),
        updated_at: DateTime.now()));

    notifyListeners();
  }

  removetran(int id) {
    _trans.removeAt(id);
    notifyListeners();
  }
}
