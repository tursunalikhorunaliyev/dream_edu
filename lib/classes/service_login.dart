import 'dart:convert';

import 'package:http/http.dart' as http;

class ServiceLogin {
  Future<bool> getData(String username, password) async {
    http.Response response = await http.get(Uri.parse(
        "http://localhost:8080/api/users/find?username=$username&password=$password"));
    if (response.statusCode != 200) {
      return false;
    } else {
      return jsonDecode(response.body) as bool;
    }
  }
}
