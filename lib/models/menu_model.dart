// 최상위 클래스
class Menu {
  final String studentName;
  final String restaurant;
  final String menu;
  final List<String> otherUsers;

  Menu({
    required this.studentName,
    required this.restaurant,
    required this.menu,
    required this.otherUsers,
  });

  // JSON 데이터를 MenuInfo 객체로 변환하는 팩토리 메서드
  factory Menu.fromJson(Map<String, dynamic> json) {
    return Menu(
      studentName: json['studentName'],
      restaurant: json['restaurant'],
      menu: json['menu'],
      otherUsers: List<String>.from(json['otherUsers']),
    );
  }
}
