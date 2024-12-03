import 'package:http/http.dart' as http;

class ApiService {
  // 할당 필요
  final String baseUrl;

  ApiService(this.baseUrl);

  Future<http.Response> get(String endpoint, String requestParam) async {
    final response = await http.get(Uri.parse('$baseUrl/$endpoint').replace(queryParameters: {'param': requestParam}));
    _handleError(response);
    return response;
  }

  // 첫번째 페이지에서 사용 가능
  Future<http.Response> post(String endpoint, Map<String, dynamic> data) async {
    final response = await http.post(
      Uri.parse('$baseUrl/$endpoint'),
      body: data,
    );
    _handleError(response);
    return response;
  }

  void _handleError(http.Response response) {
    if (response.statusCode >= 400) {
      throw Exception('Error: ${response.statusCode}');
    }
  }
}
