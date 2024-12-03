// 최상위 클래스
class Place {
  final String studentName;
  final String place;
  final String detail;
  final List<String> otherUsers;

  Place({
    required this.studentName,
    required this.place,
    required this.detail,
    required this.otherUsers,
  });

  // JSON 데이터를 EventInfo 객체로 변환하는 팩토리 메서드
  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      studentName: json['studentName'],
      place: json['place'],
      detail: json['detail'],
      otherUsers: List<String>.from(json['otherUsers']),
    );
  }
}
