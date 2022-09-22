import 'dart:async';
import 'package:flutter/material.dart';
import '../../model/album_jsonplaceholder.dart';
import '../../modelview/network_request_jsonplaceholder_delete_data.dart';
import '../../modelview/network_request_jsonplaceholder_get_data.dart';



class DeleteData extends StatefulWidget {
  const DeleteData({Key? key}) : super(key: key);

  @override
  State<DeleteData> createState() => _DeleteDataState();
}

class _DeleteDataState extends State<DeleteData> {
  late Future<Album> _futureAlbum;

  @override
  void initState() {
    super.initState();
    _futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete Data Example'),
      ),
      body: Center(
        child: FutureBuilder<Album>(
          future: _futureAlbum,
          builder: (context, snapshot) {
            // If the connection is done,
            // check for response data or an error.
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(snapshot.data?.title ?? 'Deleted'),
                    ElevatedButton(
                      child: const Text('Delete Data'),
                      onPressed: ()  async {
                        int id_final =  snapshot.data!.id;
                        print(id_final);
                           _futureAlbum =  deleteAlbum(id_final);
                           print(_futureAlbum);
                      },
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
