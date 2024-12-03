import 'package:flutter/material.dart';

class PlaceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 1440,
          height: 1600,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
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
                left: 510,
                top: 74,
                child: Container(
                  width: 420,
                  height: 1526,
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
                left: 620,
                top: 151,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image:
                          NetworkImage("https://via.placeholder.com/200x200"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 639,
                top: 427,
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
                left: 591,
                top: 391,
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
                left: 530,
                top: 1077,
                child: Container(
                  width: 380,
                  height: 420,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 380,
                          height: 420,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 32,
                        top: 96,
                        child: Container(
                          width: 320,
                          height: 60,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 320,
                                  height: 60,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF0071DB),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 78,
                                top: 20,
                                child: Text(
                                  '박도현',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0.05,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 19,
                                top: 12,
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 278,
                                top: 12,
                                child: Text(
                                  '>',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0.03,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 32,
                        top: 172,
                        child: Container(
                          width: 320,
                          height: 60,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 320,
                                  height: 60,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF0071DB),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 78,
                                top: 20,
                                child: Text(
                                  '유환중',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0.05,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 19,
                                top: 12,
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 278,
                                top: 12,
                                child: Text(
                                  '>',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0.03,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 32,
                        top: 248,
                        child: Container(
                          width: 320,
                          height: 60,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 320,
                                  height: 60,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF0071DB),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 78,
                                top: 20,
                                child: Text(
                                  '한왕호',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0.05,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 19,
                                top: 12,
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 278,
                                top: 12,
                                child: Text(
                                  '>',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0.03,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 32,
                        top: 324,
                        child: Container(
                          width: 320,
                          height: 60,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 320,
                                  height: 60,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFFB8B8B8),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 78,
                                top: 20,
                                child: Text(
                                  '김건우',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0.05,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 19,
                                top: 12,
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: OvalBorder(),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 278,
                                top: 12,
                                child: Text(
                                  '>',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0.03,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 32,
                        top: 41,
                        child: Text(
                          '나와 같은 장소의 친구는?',
                          style: TextStyle(
                            color: Colors.black,
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
                left: 530,
                top: 547,
                child: Container(
                  width: 380,
                  height: 500,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 380,
                          height: 500,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 25,
                        top: 33,
                        child: Container(
                          width: 330,
                          height: 220,
                          decoration: BoxDecoration(color: Color(0xFFD9D9D9)),
                        ),
                      ),
                      Positioned(
                        left: 25,
                        top: 275,
                        child: SizedBox(
                          width: 330,
                          height: 200,
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: '{place_name}\n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0.06,
                                    letterSpacing: -0.96,
                                  ),
                                ),
                                TextSpan(
                                  text: ' \n',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0.09,
                                    letterSpacing: -0.64,
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      '중앙대학교의 청룡호수는 서울캠퍼스에 위치한 상징적인 장소로, 학교의 랜드마크 중 하나입니다. 날씨가 좋은 날에는 간식거리를 들고 여유를 즐기는 학생들을 볼 수 있습니다. 캠퍼스 내에서 자연과 조화롭게 어우러져 학생들과 방문객들에게 아름다운 풍경을 제공합니다. ',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0.09,
                                    letterSpacing: -0.64,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 15,
                child: Container(
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
// ,
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
      ],
    );
  }
}