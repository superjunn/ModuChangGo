import 'package:get/get.dart';

const host = "https://jsonplaceholder.typicode.com/";

class HolderProvider extends GetConnect {
  Future<Response> findAll() => get("$host/posts");

  Future<Response> findById(String id) => get("$host/posts/$id");

  Future<Response> deleteByName(String id) => delete("$host/posts/$id");
}
