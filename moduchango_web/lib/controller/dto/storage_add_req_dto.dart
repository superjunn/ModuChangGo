class StorageAddReqDto {
  final String? storageName;
  final String? location;
  final String? manager;
  final int? item;

  StorageAddReqDto(this.storageName, this.location, this.manager, this.item);

  Map<String, dynamic> toJson() => {
        "storageName": storageName,
        "location": location,
        "manager": manager,
        "item": item,
      };
}
