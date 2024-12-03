import 'package:puangluckluck/models/user_model.dart';
import 'package:puangluckluck/services/api_service.dart';

class MenuService {
  final ApiService _apiService;

  MenuService(this._apiService);

  // json decoding 필요
  Future<dynamic> getMenu(User user) async {
    final response = await _apiService.get('menu', user.studentNum);
    return response.body;
  }
}