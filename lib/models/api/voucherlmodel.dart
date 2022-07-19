class VoucherModel {
  VoucherModel({
    required this.data,
  });

  Data data;

  factory VoucherModel.fromJson(Map<String, dynamic> json) => VoucherModel(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.stock,
    required this.harga_point,
    required this.nominal,
    required this.voucher_detail_id,
  });

  int id;
  String name;
  int stock;
  int harga_point;
  int nominal;
  int voucher_detail_id;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["ID"],
        name: json["name"],
        stock: json["stock"],
        harga_point: json["harga_point"],
        nominal: json["nominal"],
        voucher_detail_id: json["voucher_detail_id"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "name": name,
        "stock": stock,
        "harga_point": harga_point,
        "nominal": nominal,
        "voucher_detail_id": voucher_detail_id,
      };
}
