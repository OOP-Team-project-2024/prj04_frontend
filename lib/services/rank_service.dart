import 'package:puangluckluck/models/user_model.dart';
import 'package:puangluckluck/services/api_service.dart';

class RankService {
  final ApiService _apiService;

  RankService(this._apiService);

  // json decoding 필요
  Future<dynamic> getRank(User user) async {
    final response = await _apiService.get('rank', user.studentNum);
    return response.body;
  }
}
