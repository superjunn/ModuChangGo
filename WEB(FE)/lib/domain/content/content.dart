class Content {
  final String? niin;
  final String? contentName;
  final String? storageName;
  final int? amount;

  Content({
    this.niin,
    this.contentName,
    this.storageName,
    this.amount,
  });

  Content.fromJson(Map<String, dynamic> json)
      : niin = json["NIIN"],
        contentName = json["productName"],
        storageName = json["storageName"],
        amount = json["image"];
}
