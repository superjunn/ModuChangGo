class Content {
  final String? id;
  final String? storageName;
  final String? location;
  final String? manager;
  final int? image;

  Content({
    this.id,
    this.storageName,
    this.location,
    this.manager,
    this.image,
  });

  Content.fromJson(Map<String, dynamic> json)
      : id = json["_id"],
        storageName = json["storageName"],
        location = json["location"],
        manager = json["manager"],
        image = json["image"];
}
