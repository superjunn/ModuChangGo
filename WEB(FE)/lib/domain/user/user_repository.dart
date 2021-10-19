import 'package:get/get.dart';
import 'package:moduchango/controller/dto/join_req_dto.dart';
import 'package:moduchango/domain/user/user.dart';
import 'package:moduchango/domain/user/user_provider.dart';

class UserRepository {
  final UserProvider _userProvider = UserProvider();

  Future<List<User>> findAll() async {
    Response response = await _userProvider.findAll();
    dynamic body = response.body;
    // print("레포지토리가 받아온 body는 ?? : ${body}");

    if (body.runtimeType == List) {
      List<dynamic> temp = body;
      List<User> users = temp.map((e) => User.fromJson(e)).toList();
      return users;
    } else {
      print("런타임타입이 리스트가 아니어서 디폴트 빈리스트 리턴 in REpository !!");
      return <User>[];
    }
  }

  Future<User> init({
    required String userId,
    required String userPassword,
    required String userArmy,
  }) async {
    JoinReqDto joinReqDto = JoinReqDto(
      userId: userId,
      userArmy: userArmy,
      userPassword: userPassword,
    );
    Response response = await _userProvider.init(joinReqDto.toJson());
    dynamic body = response.body;
    int result = body["result"];

    if (result == 1) {
      print("user info 추가 성공");
      User user = User.fromJson(joinReqDto.toJson());
      return user;
    } else {
      print("창고 추가 실패");
      return User();
    }
  }
}
