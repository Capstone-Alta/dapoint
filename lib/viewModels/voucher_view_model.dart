import 'package:dapoint/models/api/voucher_api.dart';
import 'package:dapoint/models/voucher.dart';
import 'package:flutter/foundation.dart';

class VoucherViewModel extends ChangeNotifier {
  VoucherApi productService = VoucherApi();
  late List<Voucher> listVoucher;

  bool isLoading = false;

  int selectIndex = 0;
  late Voucher voucher;

  Future<List<Voucher>>? getListVoucher() {
    isLoading = true;
    notifyListeners();
    listVoucher = productService.listPulsaData;
    isLoading = false;
    notifyListeners();
  }
}
