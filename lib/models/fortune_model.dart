class TotalFortune {
  final String date;
  final int totalScore;
  final String totalFortune;
  final List<Fortune> fortunes;

  TotalFortune({
    required this.date,
    required this.totalScore,
    required this.totalFortune,
    required this.fortunes,
  });

  // JSON 데이터를 Dart 객체로 변환
  factory TotalFortune.fromJson(Map<String, dynamic> json) {
    return TotalFortune(
      date: json['date'],
      totalScore: json['totalScore'],
      totalFortune: json['totalFortune'],
      fortunes: List<Fortune>.from(
        json["fortunes"].map((item) => Fortune.fromJson(item))
      ),
    );
  }
}

class Fortune {
  final String type;
  final int score;
  final String detail;

  Fortune({
    required this.type,
    required this.score,
    required this.detail,
  });

  // JSON 데이터를 Dart 객체로 변환
  factory Fortune.fromJson(Map<String, dynamic> json) {
    return Fortune(
      type: json['type'],
      score: json['score'],
      detail: json['detail'],
    );
  }
}