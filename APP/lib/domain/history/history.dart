import 'package:intl/intl.dart';

class History {
  final String? id;
  final String? NIIN;
  final String? productName;
  final String? storageName;
  final String? state;
  final DateTime? time;

  History({
    this.id,
    this.NIIN,
    this.productName,
    this.storageName,
    this.state,
    this.time,
  });

  History.fromJson(Map<String, dynamic> json)
      : id = json["_id"],
        NIIN = json["NIIN"],
        productName = json["productName"],
        storageName = json["storageName"],
        state = json["state"],
        time = DateFormat("yyyy-mm-dd").parse(json["date"]);
}
