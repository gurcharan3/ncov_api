import 'dart:convert';

import 'api.dart';
import 'package:http/http.dart' as http;

class ApiService {
  ApiService(this.api);
  final API api;

  Future<String> getAcessToken() async {
    final response = await http.post(
      api.tokenUri(),
      headers: {'Authorization': 'Basic ${api.apiKey}'},
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final accessToken = data['access_token'];
      if (accessToken != null) {
        return accessToken;
      }
    }
    throw response;
  }
}
