import 'package:puangluckluck/models/user_model.dart';
import 'package:puangluckluck/services/api_service.dart';

class PlaceService {
  final ApiService _apiService;

  PlaceService(this._apiService);

  // json decoding 필요
  Future<dynamic> getPlace(User user) async {
    final response = await _apiService.get('place', user.studentNum);
    return response.body;
  }
}
