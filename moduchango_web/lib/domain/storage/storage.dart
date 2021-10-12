class Storage {
  final String? storgeName;
  final String? location;
  final String? manager;
  final int? image;

  Storage({
    this.storgeName,
    this.location,
    this.manager,
    this.image,
  });

  // 통신을 위해서, json 처럼 생긴 문자열 {"id" : 1} 을 dart 오브젝트로 만들어줄 것이다.
  //통신을 위해서 json 처럼 생긴 문자열 ==> Dart 오브젝트
  Storage.fromJson(Map<String, dynamic> json)
      : storgeName = json["storageName"],
        location = json["location"],
        manager = json["manager"],
        image = json["imamge"];
}
