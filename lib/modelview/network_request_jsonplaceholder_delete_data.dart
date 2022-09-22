import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/album_jsonplaceholder.dart';

Future<Album> deleteAlbum(int id) async {
  print('passei por aqui, $id');
  final http.Response response = await http.delete(
    Uri.parse('https://jsonplaceholder.typicode.com/albums/2'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );
  print('Resposta:');
  print(response.body);
  print(response.statusCode);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON. After deleting,
    // you'll get an empty JSON `{}` response.
    // Don't return `null`, otherwise `snapshot.hasData`
    // will always return false on `FutureBuilder`.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a "200 OK response",
    // then throw an exception.
    throw Exception('Failed to delete album.');
  }
}