import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../models/fortune_model.dart';
import '../services/api_service.dart';
import '../services/fortune_service.dart';

class FortuneScreen extends StatelessWidget {
  final UserService _userService = UserService(ApiService('http://10.2.2.2:8080/api/fortune'));

  @override
  Widget build(BuildContext context) {
    // Retrieve the User object passed from the LoginScreen
    final user = ModalRoute.of(context)?.settings.arguments as User;

    return Scaffold(
      appBar: AppBar(title: const Text('오늘의 운세')),
      body: FutureBuilder<dynamic>(
        future: _userService.postUser(user), // Using UserService to fetch data
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('오류 발생: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('운세 정보를 불러오지 못했습니다.'));
          }

          // Parse the response JSON into the TotalFortune object
          final fortune = TotalFortune.fromJson(snapshot.data);

          return _buildFortuneContent(fortune, user);
        },
      ),
    );
  }

  Widget _buildFortuneContent(TotalFortune fortune, User user) {
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
          if (fortune.fortunes.isNotEmpty)
            _buildCard(
              title: '🌟 행운의 장소',
              content: fortune.fortunes[0].detail,
            ),
          if (fortune.fortunes.length > 1)
            _buildCard(
              title: '🌟 행운의 메뉴',
              content: fortune.fortunes[1].detail,
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
