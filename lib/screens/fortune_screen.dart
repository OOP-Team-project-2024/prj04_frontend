
import 'dart:convert';

import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../models/fortune_model.dart';
import '../models/menu_model.dart';
import '../models/place_model.dart';
import '../models/rank_model.dart';
import '../services/api_service.dart';
import '../services/fortune_service.dart';
import '../services/menu_service.dart';
import '../services/place_service.dart';
import '../services/rank_service.dart';

class FortuneScreen extends StatelessWidget {
  final UserService _userService = UserService(ApiService('http://10.0.2.2:8080/api/fortune'));
  final MenuService _menuService = MenuService(ApiService('http://10.0.2.2:8080/api/fortune'));
  final PlaceService _placeService = PlaceService(ApiService('http://10.0.2.2:8080/api/fortune'));
  final RankService _rankService = RankService(ApiService('http://10.0.2.2:8080/api/fortune'));

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)?.settings.arguments as User;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F9FF),
      appBar: AppBar(
        title: const Text('오늘의 운세'),
        backgroundColor: const Color(0xFF0071DB),
      ),
      body: FutureBuilder<dynamic>(
        future: _fetchAllData(user),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('오류 발생: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('운세 정보를 불러오지 못했습니다.'));
          }

          final data = snapshot.data as Map<String, dynamic>;
          final fortune = data['fortune'] as TotalFortune;
          final menu = data['menu'] as Menu;
          final place = data['place'] as Place;
          final rank = data['rank'] as Rank;

          return _buildFortuneContent(context, fortune, menu, place, rank, user);
        },
      ),
    );
  }

  Future<Map<String, dynamic>> _fetchAllData(User user) async {
    final fortuneResponse = await _userService.postUser(user);
    final menuResponse = await _menuService.getMenu(user);
    final placeResponse = await _placeService.getPlace(user);
    final rankResponse = await _rankService.getRank(user);

    return {
      'fortune': TotalFortune.fromJson(jsonDecode(fortuneResponse)),
      'menu': Menu.fromJson(jsonDecode(menuResponse)),
      'place': Place.fromJson(jsonDecode(placeResponse)),
      'rank': Rank.fromJson(jsonDecode(rankResponse)),
    };
  }

  Widget _buildFortuneContent(
      BuildContext context, TotalFortune fortune, Menu menu, Place place, Rank rank, User user) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/mainpic.jpg'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '푸앙점점',
            style: TextStyle(
              color: const Color(0xFF1E2D63),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            '${user.name}님의 오늘의 운세는?',
            style: TextStyle(
              color: const Color(0xFF1D358A),
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 20),
          _buildSection(
            icon: Icons.sunny,
            title: '오늘의 운세 총평',
            content: fortune.totalFortune,
            fortunes: fortune.fortunes,
          ),
          _buildCard(
            context: context,
            icon: Icons.place,
            title: '행운의 장소',
            content: '오늘의 행운의 장소는 ${place.place}',
            routeName: '/place',
            user: user,
          ),
          _buildCard(
            context: context,
            icon: Icons.restaurant,
            title: '오늘의 메뉴',
            content: '${menu.restaurant}의 ${menu.menu}',
            routeName: '/menu',
            user: user,
          ),
          _buildCard(
            context: context,
            icon: Icons.emoji_events,
            title: '나의 운세 등수',
            content: '${rank.myInfo.rank}등 (${rank.myInfo.totalScore}점)',
            routeName: '/rank',
            user: user,
          ),
        ],
      ),
    );
  }

  Widget _buildSection({
    required IconData icon,
    required String title,
    required String content,
    required List<Fortune> fortunes,
  }) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: const Color(0xFF0071DB)),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 20),
          ...fortunes.map((fortune) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      fortune.type == "재물운" ? "💰" :
                      fortune.type == "애정운" ? "❤️" :
                      fortune.type == "학업운" ? "📚" :
                      fortune.type == "건강운" ? "🦷" : "✨",
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "${fortune.type} - ${fortune.score}점",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  fortune.detail,
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 10),
              ],
            );
          }).toList(),
        ],
      ),
    );
  }


  Widget _buildCard({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String content,
    required String routeName,
    required User user,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: const Color(0xFF0071DB),
                child: Icon(icon, color: Colors.white, size: 30),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, routeName, arguments: user);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0071DB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: const Text(
                '자세히 보기',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


