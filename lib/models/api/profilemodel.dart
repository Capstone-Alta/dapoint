class User {
  User({
    required this.data,
  });

  Data data;

  factory User.fromJson(Map<String, dynamic> json) => User(
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
    required this.email,
    required this.total_point,
  });

  int id;
  String name;
  String email;

  int total_point;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["ID"],
        name: json["name"],
        email: json["email"],
        total_point: json["total_point"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "name": name,
        "email": name,
        "total_point": total_point,
      };
}
