import 'package:get/get.dart';

const host = "http://192.168.219.100:3000";

class StorageProvider extends GetConnect {
  Future<Response> findAll() => get("$host/storages");
}
