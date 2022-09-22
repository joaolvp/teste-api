import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/album_viacep.dart';

Future<Album> fetchAlbum() async {
  final response = await http
      .get(Uri.parse('https://viacep.com.br/ws/76878899/json/'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}