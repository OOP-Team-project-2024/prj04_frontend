import 'package:flutter/material.dart';

class FortuneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 1440,
          height: 2600,
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
              const SizedBox(height: 14),
              Container(
                width: 420,
                height: 2526,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 420,
                        height: 2526,
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
                      left: 20,
                      top: 2181,
                      child: Container(
                        width: 380,
                        height: 300,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 380,
                                height: 300,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 226,
                              child: Container(
                                width: 340,
                                height: 50,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 340,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF0071DB),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 123,
                                      top: 15,
                                      child: Text(
                                        '자세히 보기',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700,
                                          height: 0.05,
                                          letterSpacing: -0.80,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 59,
                              top: 187,
                              child: Text(
                                '{friends_count} 중 {myrank}등',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0.05,
                                  letterSpacing: -0.80,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 140,
                              top: 67,
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 29,
                              child: Text(
                                '🌟 나의 운세 등수',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0.04,
                                  letterSpacing: -0.96,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 1845,
                      child: Container(
                        width: 380,
                        height: 300,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 380,
                                height: 300,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 226,
                              child: Container(
                                width: 340,
                                height: 50,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 340,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF0071DB),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 123,
                                      top: 15,
                                      child: Text(
                                        '자세히 보기',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700,
                                          height: 0.05,
                                          letterSpacing: -0.80,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 33,
                              top: 187,
                              child: Text(
                                '{restaurant_name}의 {menu_name}',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0.05,
                                  letterSpacing: -0.80,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 140,
                              top: 67,
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 29,
                              child: Text(
                                '🌟 오늘의 메뉴',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0.04,
                                  letterSpacing: -0.96,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 1509,
                      child: Container(
                        width: 380,
                        height: 300,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 380,
                                height: 300,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 226,
                              child: Container(
                                width: 340,
                                height: 50,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 340,
                                        height: 50,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFF0071DB),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 123,
                                      top: 15,
                                      child: Text(
                                        '자세히 보기',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w700,
                                          height: 0.05,
                                          letterSpacing: -0.80,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 71,
                              top: 187,
                              child: Text(
                                '오늘의 장소는 {place_name}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  height: 0.05,
                                  letterSpacing: -0.80,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 140,
                              top: 67,
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: OvalBorder(),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 29,
                              child: Text(
                                '🌟 행운의 장소',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0.04,
                                  letterSpacing: -0.96,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 533,
                      child: Container(
                        width: 380,
                        height: 940,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 380,
                                height: 940,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 30,
                              top: 96,
                              child: SizedBox(
                                width: 320,
                                height: 814,
                                child: Text(
                                  '오늘은 기회와 도전이 함께 찾아오는 날입니다! 약간의 노력과 용기가 큰 성과를 가져올 수 있는 날이니, 새로운 것을 시도하거나 평소 미뤄두었던 일을 시작하기에 적기입니다. \n\n다만, 주변 사람들과의 조화와 신뢰를 잘 유지하는 것이 중요한 하루가 될 것입니다.\n\n💰 재물운\n재물운은 비교적 안정적입니다. 큰 수익은 아니더라도 기존의 재정 상태를 유지하거나 약간의 수익 증가가 기대됩니다. 다만, 충동적인 소비를 조심하세요. 계획성 있는 소비가 오늘의 재물운을 더 좋게 만들어줍니다.\n\n❤️ 애정운\n애정운은 매우 밝습니다! 싱글이라면 새로운 인연을 만날 가능성이 크며, 연애 중이라면 상대방과의 깊은 대화로 관계가 더욱 돈독해질 수 있습니다. 솔직한 마음 표현이 행운을 부릅니다.\n\n📚 학업운\n학업운이 상승 곡선을 그리고 있습니다. 특히 집중력이 높아지며 새로운 정보를 빠르게 습득할 수 있는 날입니다. 중요한 시험이나 과제에 좋은 결과를 기대해도 좋지만, 휴식도 병행해 효율을 높이는 것이 중요합니다.\n\n🩺 건강운\n건강운은 보통 수준입니다. 평소보다 피로감을 느낄 수 있으니 충분한 수분 섭취와 휴식이 필요합니다. 운동은 가벼운 스트레칭이나 산책으로 몸의 긴장을 풀어주는 것이 좋습니다. 특히 체온 관리를 잘 하세요.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w400,
                                    height: 0.09,
                                    letterSpacing: -0.64,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 30,
                              top: 43,
                              child: Text(
                                '🌟 오늘의 운세 총평',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: 0.04,
                                  letterSpacing: -0.96,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 34,
                      top: 77,
                      child: Container(
                        width: 305,
                        height: 426,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 390,
                              child: Text(
                                '{name} 님의 오늘의 운세는?',
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
                              left: 95,
                              top: 276,
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
                              left: 47,
                              top: 240,
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
                              left: 76,
                              top: 0,
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