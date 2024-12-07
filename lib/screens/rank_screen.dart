import 'package:flutter/material.dart';
import '../models/rank_model.dart';
import '../models/user_model.dart';
import '../services/api_service.dart';
import '../services/rank_service.dart';

class RankScreen extends StatelessWidget {
  final RankService _rankService =
  RankService(ApiService('http://10.2.2.2:8080/api/rank'));

  RankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 로그인 화면에서 전달받은 User 객체
    final user = ModalRoute.of(context)?.settings.arguments as User;

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('오늘의 운세 랭킹'),
        backgroundColor: const Color(0xFF0071DB),
      ),
      body: FutureBuilder<dynamic>(
        future: _rankService.getRank(user), // Rank 데이터를 가져옴
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('오류 발생: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('랭킹 정보를 불러오지 못했습니다.'));
          }

          // 서버에서 받아온 데이터를 Rank 객체로 파싱
          final rank = Rank.fromJson(snapshot.data);

          return _buildRankContent(rank, screenWidth, screenHeight, user);
        },
      ),
    );
  }

  Widget _buildRankContent(
      Rank rank, double screenWidth, double screenHeight, User user) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenHeight * 0.02),
          Container(
            width: screenWidth * 0.5,
            height: screenWidth * 0.5,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/mainpic.jpg'),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle,
            ),
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

          // Rank Card
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
                  '내 랭킹',
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  '${rank.myInfo.name} - ${rank.myInfo.totalScore}점 (랭킹: ${rank.myInfo.rank})',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.04),

          // Ranking List
          Text(
            '운세 랭킹',
            style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth * 0.05,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          ..._buildRankingList(rank.rankList, screenWidth, screenHeight),
        ],
      ),
    );
  }

  // Helper Function to Build Ranking List
  List<Widget> _buildRankingList(
      List<RankInfo> rankings, double screenWidth, double screenHeight) {
    return rankings.map((rankInfo) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
        child: Container(
          width: screenWidth * 0.9,
          height: screenHeight * 0.07,
          decoration: BoxDecoration(
            color: rankInfo.name == '나' ? const Color(0xFFFFA135) : const Color(0xFF0071DB),
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
                  '${rankInfo.name}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenWidth * 0.05,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Text(
                '${rankInfo.totalScore}점',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.045,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: screenWidth * 0.04),
            ],
          ),
        ),
      );
    }).toList();
  }
}