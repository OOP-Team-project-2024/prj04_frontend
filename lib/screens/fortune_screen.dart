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
  final UserService _userService = UserService(ApiService('http://10.2.2.2:8080/api/fortune'));
  final MenuService _menuService = MenuService(ApiService('http://10.2.2.2:8080/api/menu'));
  final PlaceService _placeService = PlaceService(ApiService('http://10.2.2.2:8080/api/place'));
  final RankService _rankService = RankService(ApiService('http://10.2.2.2:8080/api/rank'));

  @override
  Widget build(BuildContext context) {
    // Retrieve the User object passed from the LoginScreen
    final user = ModalRoute.of(context)?.settings.arguments as User;

    return Scaffold(
      appBar: AppBar(title: const Text('오늘의 운세')),
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

          return _buildFortuneContent(fortune, menu, place, rank, user);
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
      'fortune': TotalFortune.fromJson(fortuneResponse),
      'menu': Menu.fromJson(menuResponse),
      'place': Place.fromJson(placeResponse),
      'rank': Rank.fromJson(rankResponse),
    };
  }

  Widget _buildFortuneContent(
      TotalFortune fortune, Menu menu, Place place, Rank rank, User user) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _buildCard(
            title: '🌟 ${user.name}님의 오늘의 운세 총평',
            content: fortune.totalFortune,
          ),
          _buildCard(
            title: '🌟 나의 점수',
            content: '${fortune.totalScore}점',
          ),
          _buildCard(
            title: '🍴 행운의 메뉴',
            content: '${menu.menu} at ${menu.restaurant}',
          ),
          _buildCard(
            title: '📍 행운의 장소',
            content: place.place,
          ),
          _buildCard(
            title: '🏆 나의 랭크',
            content: '${rank.myInfo.name}님은 ${rank.myInfo.rank}등 (${rank.myInfo.totalScore}점)',
          ),
        ],
      ),
    );
  }

  Widget _buildCard({required String title, required String content}) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(content),
          ],
        ),
      ),
    );
  }
}