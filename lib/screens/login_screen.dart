import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 1440,
          height: 1024,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 1440,
                height: 60,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 1440,
                        height: 60,
                        decoration: BoxDecoration(color: Color(0xFF0071DB)),
                      ),
                    ),
                    Positioned(
                      left: 16,
                      top: 15,
                      child: Container(
                        width: 106,
                        height: 30,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 42,
                              top: 0,
                              child: Text(
                                '푸앙점점',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: 'Dongle',
                                  fontWeight: FontWeight.w700,
                                  height: 0.03,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 30,
                                height: 30,
                                padding: const EdgeInsets.only(
                                  top: 1.25,
                                  left: 2.50,
                                  right: 1.25,
                                  bottom: 2.50,
                                ),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // 필요
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              Container(
                width: 420,
                height: 950,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 420,
                        height: 950,
                        decoration: ShapeDecoration(
                          color: Color(0xFFEFF7FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(250),
                              topRight: Radius.circular(250),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 623,
                      child: Container(
                        width: 360,
                        height: 64,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 360,
                                height: 64,
                                decoration: ShapeDecoration(
                                  color: Color(0xFF0071DB),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 110,
                              top: 20,
                              child: Text(
                                '운세 확인하기',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0.04,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 475,
                      child: Container(
                        width: 360,
                        height: 108,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 60,
                              child: Container(
                                width: 360,
                                height: 48,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 360,
                                        height: 48,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 19,
                                      top: 15,
                                      child: Text(
                                        '학번을 입력해 주세요 (ex. 20214042)',
                                        style: TextStyle(
                                          color: Color(0xFFB8B8B8),
                                          fontSize: 18,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0.06,
                                          letterSpacing: -0.72,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 360,
                                height: 48,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 360,
                                        height: 48,
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 19,
                                      top: 15,
                                      child: Text(
                                        '이름을 입력해 주세요 (ex. 김푸앙)',
                                        style: TextStyle(
                                          color: Color(0xFFB8B8B8),
                                          fontSize: 18,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w400,
                                          height: 0.06,
                                          letterSpacing: -0.72,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 129,
                      top: 353,
                      child: Text(
                        '푸앙점점',
                        style: TextStyle(
                          color: Color(0xFF1E2D63),
                          fontSize: 80,
                          fontFamily: 'Dongle',
                          fontWeight: FontWeight.w700,
                          height: 0.01,
                          letterSpacing: -3.20,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 81,
                      top: 317,
                      child: Text(
                        '학점으로 확인하는 오늘의 운세!',
                        style: TextStyle(
                          color: Color(0xFF1D358A),
                          fontSize: 36,
                          fontFamily: 'Dongle',
                          fontWeight: FontWeight.w400,
                          height: 0.03,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 110,
                      top: 77,
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/200x200"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}