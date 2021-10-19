import 'package:intl/intl.dart';

class User {
  final String? userId;
  final String? userPassword;
  final String? userArmy;

  User({
    this.userId,
    this.userPassword,
    this.userArmy,
  });

  User.fromJson(Map<String, dynamic> json)
      : userId = json["user_id"],
        userPassword = json["user_password"],
        userArmy = json["user_army"];
}
