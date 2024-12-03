import 'package:puangluckluck/models/user_model.dart';
import 'package:puangluckluck/services/api_service.dart';

class UserService {
  final ApiService _apiService;

  UserService(this._apiService);
  
  // 학생 등록 및 운세 생성
  // json decoding 필요
  Future<dynamic> postUser(User user) async {
    final response = await _apiService.post('', user.toJson());
    return response.body;
  }
}