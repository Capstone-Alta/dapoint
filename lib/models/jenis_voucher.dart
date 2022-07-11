class JenisVoucher {
  final String jenisVoucher;
  final String image;

  JenisVoucher({required this.jenisVoucher, required this.image});
}

class JenisVoucherList {
  static final String pd = "icon_voucher/pulsa_data.png";
  static final String cashout = "icon_voucher/cashout.png";
  static final String emoney = "icon_voucher/emoneyv.png";
  static List<JenisVoucher> fetchVoucher() {
    return [
      JenisVoucher(jenisVoucher: "Pulsa & Data", image: pd),
      JenisVoucher(jenisVoucher: "Cashout", image: cashout),
      JenisVoucher(jenisVoucher: "Emoney", image: emoney)
    ];
  }
}
