import 'package:get/get.dart';

const host = "http://52.231.98.151:3000";

class UserProvider extends GetConnect {
  Future<Response> findAll() => get("$host/user");

  Future<Response> init(Map data) => post("$host/join", data);
}
