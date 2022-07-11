import 'package:dapoint/models/voucher.dart';

class Transactions {
  int id;
  int user_id;
  int voucher_id;
  String status;
  String transaction_detail;
  DateTime transaction_date;
  // - created_at
  DateTime updated_at;

  Transactions(
      {required this.id,
      required this.user_id,
      required this.voucher_id,
      required this.status,
      required this.transaction_detail,
      required this.transaction_date,
      required this.updated_at});
}
