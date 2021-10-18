import 'package:intl/intl.dart';

class Holder {
  final String? userId;
  final String? id;
  final String? title;
  final String? body;

  Holder({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  Holder.fromJson(Map<String, dynamic> json)
      : userId = json["userId"],
        id = json["id"],
        title = json["title"],
        body = json["body"];
}
