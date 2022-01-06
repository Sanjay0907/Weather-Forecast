import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({required this.url});

  final String url;

  Future getData() async {
    Response response = await get(
      Uri.parse(url),
    );
    if (response.statusCode == 200) {
      String data = response.body;
      // print(data); // retrns JSON format data
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}