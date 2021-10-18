import 'package:get/get.dart';

const host = "https://jsonplaceholder.typicode.com/";

class HolderProvider extends GetConnect {
  Future<Response> findAll() => get("$host/posts");

  Future<Response> findById(String storageName) =>
      get("$host/storages/$storageName");

  Future<Response> deleteByName(String storageName) =>
      delete("$host/storages/$storageName");
}
