class Voucher {
  int id;
  int category_id;
  String name;
  int price;
  int stock;
  String description;

  Voucher({
    required this.id,
    required this.category_id,
    required this.name,
    required this.price,
    required this.stock,
    required this.description,
  });
  @override
  String toString() {
    return {
      "id": id,
      "category_id": category_id,
      "name": name,
      "price": price,
      "price": price,
      "stock": stock,
      "description": description
    }.toString();
  }

  Voucher copyWith({
    int? id,
    int? category_id,
    String? name,
    int? price,
    int? stock,
    String? description,
  }) {
    return Voucher(
      id: id ?? this.id,
      category_id: category_id ?? this.category_id,
      name: name ?? this.name,
      price: price ?? this.price,
      stock: stock ?? this.stock,
      description: description ?? this.description,
    );
  }
}
