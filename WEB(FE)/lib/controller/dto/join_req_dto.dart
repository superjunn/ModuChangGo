class JoinReqDto {
  final String? userId;
  final String? userPassword;
  final String? userArmy;

  JoinReqDto({this.userId, this.userPassword, this.userArmy});

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "user_password": userPassword,
        "user_army": userArmy,
      };
}
