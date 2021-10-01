import 'package:flutter/material.dart';
import 'package:flutter_kakao/components/bottom_icon_button.dart';
import 'package:flutter_kakao/components/round_icon_button.dart';
import 'package:flutter_kakao/models/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  final User user;
  const ProfileScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(user.backgroundImage),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _buildAppBar(context),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(),
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(user.backgroundImage)),
                ),
              ),
              SizedBox(height: 8),
              Text(
                user.name,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 5),
              Text(
                user.intro,
                style: TextStyle(color: Colors.white, fontSize: 15),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BottomIconButton(
                      icon: FontAwesomeIcons.comment,
                      text: user.name == "김철수"
                          ? "Chat with me"
                          : "Start Chatting"),
                  SizedBox(width: 10),
                  Container(width: 2, height: 60, color: Colors.white),
                  SizedBox(width: 10),
                  BottomIconButton(
                    icon: user.name == "김철수"
                        ? FontAwesomeIcons.pen
                        : FontAwesomeIcons.phone,
                    text: user.name == "김철수" ? "Edit Profile" : "kakao story",
                  ),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: InkWell(
        onTap: () => Navigator.pop(context),
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 20,
        ),
      ),
      backgroundColor: Colors.transparent,
      actions: [
        RoundIconButton(
          icon: FontAwesomeIcons.gift,
        ),
        SizedBox(width: 15),
        RoundIconButton(
          icon: FontAwesomeIcons.cog,
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
