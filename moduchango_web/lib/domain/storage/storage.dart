class Storage {
  final String? id;
  final String? storgeName;
  final String? location;
  final String? manager;
  final int? image;

  Storage({
    this.id,
    this.storgeName,
    this.location,
    this.manager,
    this.image,
  });

  Storage.fromJson(Map<String, dynamic> json)
      : id = json["_id"],
        storgeName = json["storageName"],
        location = json["location"],
        manager = json["manager"],
        image = json["imamge"];
}
