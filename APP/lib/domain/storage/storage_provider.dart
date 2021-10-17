import 'package:get/get.dart';

const host = "http://52.231.98.151:3000";

class StorageProvider extends GetConnect {
  Future<Response> findAll() => get("$host/storages");

  //Json 데이터 UTF-8 인코딩 8분 9초부터!!!
}
