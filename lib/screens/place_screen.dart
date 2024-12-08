import 'dart:convert';

import 'package:flutter/material.dart';
import '../models/place_model.dart';
import '../models/user_model.dart';
import '../services/api_service.dart';
import '../services/place_service.dart';

class PlaceScreen extends StatelessWidget {
  final PlaceService _placeService =
  PlaceService(ApiService('http://10.0.2.2:8080/api/fortune'));

  @override
  Widget build(BuildContext context) {
    // 로그인 화면에서 전달받은 User 객체
    final user = ModalRoute.of(context)?.settings.arguments as User;

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFFF6F9FF),
      appBar: AppBar(
        title: const Text('행운의 장소'),
        backgroundColor : const Color(0xFF0071DB),
        titleTextStyle: const TextStyle( color: Colors.white),
      ),
      body: FutureBuilder<dynamic>(
        future: _placeService.getPlace(user), // Place 데이터를 가져옴
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('오류 발생: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('장소 정보를 불러오지 못했습니다.'));
          }

          // 서버에서 받아온 데이터를 Place 객체로 파싱
          final place = Place.fromJson(jsonDecode(snapshot.data));

          return _buildPlaceContent(place, screenWidth, screenHeight);
        },
      ),
    );
  }

  Widget _buildPlaceContent(Place place, double screenWidth, double screenHeight) {
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
              fontSize: screenWidth * 0.1,
              fontFamily: 'Dongle',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          Text(
            '학점으로 확인하는 오늘의 운세!',
            style: TextStyle(
              color: const Color(0xFF1D358A),
              fontSize: screenWidth * 0.05,
              fontFamily: 'Dongle',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: screenHeight * 0.05),
          _buildCard(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            title: place.place,
            description: place.detail,
          ),
          SizedBox(height: screenHeight * 0.04),
          // Friends Section
          Text(
            '나와 같은 장소의 친구들',
            style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth * 0.05,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          ..._buildFriendList(place.otherUsers, screenWidth, screenHeight),
        ],
      ),
    );
  }

  Widget _buildCard({
    required double screenWidth,
    required double screenHeight,
    required String title,
    required String description,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: screenWidth * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              description,
              style: TextStyle(fontSize: screenWidth * 0.045),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildFriendList(
      List<String> friends, double screenWidth, double screenHeight) {
    return friends.map((name) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
        child: Container(
          width: screenWidth * 0.8,
          height: screenHeight * 0.07,
          decoration: BoxDecoration(
            color: const Color(0xFF0071DB),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SizedBox(width: screenWidth * 0.04),
              CircleAvatar(
                radius: screenHeight * 0.028,
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