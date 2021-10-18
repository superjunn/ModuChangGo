import 'package:moduchango/domain/storage/storage.dart';

class CMRespDto {
  final dynamic storage;
  final String? result;

  CMRespDto({
    this.storage,
    this.result,
  });

  CMRespDto.fromJson(Map<String, dynamic> json)
      : storage = Storage.fromJson(json["storage"]),
        result = json["result"];
}
