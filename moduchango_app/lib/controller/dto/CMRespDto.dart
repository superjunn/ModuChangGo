class CMRespDto {
  final dynamic data;

  CMRespDto({this.data});

  CMRespDto.fromJson(Map<String, dynamic> json) : data = json["data"];
}
