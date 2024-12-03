// 최상위 클래스
class Rank {
  final RankInfo myInfo;
  final List<RankInfo> rankList;

  Rank({required this.myInfo, required this.rankList});

  // JSON 데이터를 MyData 객체로 변환하는 팩토리 메서드
  factory Rank.fromJson(Map<String, dynamic> json) {
    return Rank(
      myInfo: RankInfo.fromJson(json['myInfo']),
      rankList: List<RankInfo>.from(
        json['rankList'].map((item) => RankInfo.fromJson(item)),
      ),
    );
  }
}

// rankList에 있는 RankInfo 클래스
class RankInfo {
  final String name;
  final int totalScore;
  final int rank;

  RankInfo({required this.name, required this.totalScore, required this.rank});

  factory RankInfo.fromJson(Map<String, dynamic> json) {
    return RankInfo(
      name: json['name'],
      totalScore: json['totalScore'],
      rank: json['rank'],
    );
  }
}

