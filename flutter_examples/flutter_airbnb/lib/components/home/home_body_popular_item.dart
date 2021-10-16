import 'package:flutter/material.dart';
import 'package:flutter_airbnb/constants.dart';
import 'package:flutter_airbnb/size.dart';
import 'package:flutter_airbnb/styles.dart';

class HomeBodyPopularItem extends StatelessWidget {
  final id;
  final popularList = [
    "p1.jpeg",
    "p2.jpeg",
    "p3.jpeg",
  ];

  HomeBodyPopularItem({required this.id});
  @override
  Widget build(BuildContext context) {
    double popularItemWidth = getBodyWidth(context) / 3 - 5;
    return Container(
      constraints: BoxConstraints(
        minWidth: 420,
      ),
      child: SizedBox(
        width: popularItemWidth,
        child: Column(
          children: [
            _buildPopularItemImage(),
            _buildPopularItemStar(),
            _buildPopularItemComment(),
            _buildPopularItemUserInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildPopularItemImage() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            "assets/p${id + 1}.jpeg",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemStar() {
    return Row(
      children: [
        Icon(Icons.star, color: kAccentColor),
        Icon(Icons.star, color: kAccentColor),
        Icon(Icons.star, color: kAccentColor),
        Icon(Icons.star, color: kAccentColor),
        Icon(Icons.star, color: kAccentColor),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemComment() {
    return Column(
      children: [
        Text(
          "깔끔하고 다 갖춰져있어서 좋았어요:) 위치도 완전 좋아용 다들 여기 살고싶다구 ㅋㅋㅋㅋㅋ 화장실도 3개에요 !! But I just really hate to write a lot I am so sorry ~~ 5명이서 씻는것도 전혀 불편함 없이 좋았어요^^ 이불도 포근하고 좋았답니다 ^%^",
          style: body1(),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: gap_s),
      ],
    );
  }

  Widget _buildPopularItemUserInfo() {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/p${id + 1}.jpeg"),
        ),
        SizedBox(width: gap_s),
        Column(
          children: [
            Text(
              "KARI",
              style: hsubtitle1(),
            ),
            Text(
              "Korea",
              style: hsubtitle2(),
            ),
          ],
        )
      ],
    );
  }
}
