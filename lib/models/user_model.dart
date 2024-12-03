import 'dart:convert';

// 최상위 클래스
class User {
  final String studentNum;
  final String name;

  User({
    required this.studentNum,
    required this.name,
  });

  // User 객체를 JSON으로 변환
  Map<String, dynamic> toJson() {
    return {
      'studentNum': studentNum,
      'name': name,
    };
  }
}