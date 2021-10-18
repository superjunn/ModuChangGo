class InitEditReqDto {
  final String? storageName;
  final String? location;
  final int? image;

  InitEditReqDto({this.storageName, this.location, this.image});

  Map<String, dynamic> toJson() => {
        "storageName": storageName,
        "location": location,
        "manager": "armyTiger",
        "image": image,
      };
}
