import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  getRecomendedSpace() async {
    final Uri url =
        Uri.parse('https://bwa-cozy-api.vercel.app/recommended-spaces');
    var result = await http.get(url);

    print(result.statusCode);
    print(result.body);
  }
}
