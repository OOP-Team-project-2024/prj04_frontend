import 'package:flutter/material.dart';
import '../models/menu_model.dart';
import '../models/user_model.dart';
import '../services/api_service.dart';
import '../services/menu_service.dart';

class MenuScreen extends StatelessWidget {
  final MenuService _menuService =
  MenuService(ApiService('http://10.2.2.2:8080/api/menu'));

  MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 이전 화면에서 전달받은 User 객체
    final user = ModalRoute.of(context)?.settings.arguments as User;

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('행운의 메뉴'),
        backgroundColor: const Color(0xFF0071DB),
      ),
      body: FutureBuilder<dynamic>(
        future: _menuService.getMenu(user), // Menu 데이터를 가져옴
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('오류 발생: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('메뉴 정보를 불러오지 못했습니다.'));
          }

          // 서버에서 받아온 데이터를 Menu 객체로 파싱
          final menu = Menu.fromJson(snapshot.data);

          return _buildMenuContent(menu, screenWidth, screenHeight);
        },
      ),
    );
  }

  Widget _buildMenuContent(Menu menu, double screenWidth, double screenHeight) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenHeight * 0.02),

          // Header Section
          CircleAvatar(
            radius: screenWidth * 0.2,
            backgroundImage: const NetworkImage("https://via.placeholder.com/200x200"),
          ),
          SizedBox(height: screenHeight * 0.02),
          Text(
            '푸앙점점',
            style: TextStyle(
              color: const Color(0xFF1E2D63),
              fontSize: screenWidth * 0.12,
              fontFamily: 'Dongle',
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            '학점으로 확인하는 오늘의 운세!',
            style: TextStyle(
              color: const Color(0xFF1D358A),
              fontSize: screenWidth * 0.05,
              fontFamily: 'Dongle',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: screenHeight * 0.03),

          // Menu Card
          Container(
            width: screenWidth * 0.9,
            padding: EdgeInsets.all(screenWidth * 0.05),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${menu.restaurant}의\n${menu.menu}',
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.2,
                  decoration: const BoxDecoration(
                    color: Color(0xFFD9D9D9),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.04),

          // Friends Section
          Text(
            '나와 같은 메뉴를 선택한 친구들',
            style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth * 0.05,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          ..._buildFriendList(menu.otherUsers, screenWidth, screenHeight),
        ],
      ),
    );
  }

  // Helper Function to Build Friend List
  List<Widget> _buildFriendList(
      List<String> friends, double screenWidth, double screenHeight) {
    return friends.map((name) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
        child: Container(
          width: screenWidth * 0.9,
          height: screenHeight * 0.07,
          decoration: BoxDecoration(
            color: const Color(0xFF0071DB),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SizedBox(width: screenWidth * 0.04),
              CircleAvatar(
                radius: screenHeight * 0.03,
                backgroundColor: Colors.white,
              ),
              SizedBox(width: screenWidth * 0.05),
              Expanded(
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: screenWidth * 0.05,
              ),
              SizedBox(width: screenWidth * 0.04),
            ],
          ),
        ),
      );
    }).toList();
  }
}