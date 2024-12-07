import 'package:flutter/material.dart';
import '../models/user_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _stdNumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                Container(
                  width: screenWidth * 0.9,
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: '이름을 입력해 주세요 (ex. 김푸앙)',
                      hintStyle: TextStyle(color: Color(0xFFB8B8B8)),
                    ),
                    style: TextStyle(fontSize: screenWidth * 0.04),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  width: screenWidth * 0.9,
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: _stdNumController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: '학번을 입력해 주세요 (ex. 20214042)',
                      hintStyle: TextStyle(color: Color(0xFFB8B8B8)),
                    ),
                    style: TextStyle(fontSize: screenWidth * 0.04),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                ElevatedButton(
                  onPressed: () {
                    final user = User(
                      studentNum: _stdNumController.text.trim(),
                      name: _nameController.text.trim(),
                    );

                    // 운세 화면으로 이동하면서 User 객체 전달
                    Navigator.pushNamed(context, '/fortune', arguments: user);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0071DB),
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.3,
                      vertical: screenHeight * 0.02,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    '운세 확인하기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.05,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}