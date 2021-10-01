import 'package:intl/intl.dart';

class User {
  final int? id;
  final String? username;
  final String? password;
  final String? email;
  final DateTime? created;
  final DateTime? updated;

  User({
    this.id,
    this.username,
    this.password,
    this.email,
    this.created,
    this.updated,
  });

  //For Communication,, JSON-Look like String will be get

  User.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        username = json["username"],
        password = json["password"],
        email = json["email"],
        created = DateFormat("yyyy-mm-dd").parse(json["created"]),
        updated = DateFormat("yyyy-mm-dd").parse(json["updated"]);
}
