import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  Widget _header(BuildContext context) {
    return Positioned(
      top: Get.mediaQuery.padding.top,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                print('프로필 편집 치ㅜ소');
              },
              child: Row(
                children: const [
                  Icon(Icons.arrow_back_ios, color: Colors.white, size: 16),
                  Text(
                    "프로필 편집",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                print('프로필편집저장');
              },
              child: const Text(
                "완료",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _backgroundImage() {
    return Positioned(
      top: 0,
      right: 0,
      bottom: 0,
      left: 0,
      child: GestureDetector(
          onTap: () {
            print(1);
          },
          child: Container(color: Colors.transparent)),
    );
  }

  Widget _oneButton(IconData? icon, String title, void Function()? ontap) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(height: 10),
          Text(title.toString(),
              style: TextStyle(fontSize: 12, color: Colors.white))
        ],
      ),
    );
  }

  Widget _footer() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      width: 1, color: Colors.white.withOpacity(0.3)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _oneButton(Icons.chat_bubble, "나와의 채팅", () {}),
              _oneButton(Icons.edit, "프로필 편집", () {}),
              _oneButton(Icons.chat_bubble_outlined, "카카오스토리", () {}),
            ],
          )),
    );
  }

  _profileImage() {
    return Container(
      width: 120,
      height: 120,

      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Image.network(
          "https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg",fit: BoxFit.cover,)
      )
    );
  }

  _profileInfo() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: const Text(
            "개발하는 남자",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ),
        const Text(
          "구독과 좋아요~! 부탁드립니다.",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
        )
      ],
    );
  }

  Widget _myProfile() {
    return Positioned(
        bottom: 120,
        left: 0,
        right: 0,
        child: Container(
          height: 200,
          color: Colors.red,
          child: Column(
            children: [
              _profileImage(),
              _profileInfo(),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3f3f3f),
      body: Container(
        child: Stack(
          children: [
            _backgroundImage(),
            _header(context),
            _myProfile(),
            _footer(),
          ],
        ),
      ),
    );
  }
}
