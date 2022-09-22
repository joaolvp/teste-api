import 'package:api/view/home_screen.dart';
import 'package:api/view/pages/delete_data.dart';
import 'package:api/view/pages/fetch_data.dart';
import 'package:api/view/pages/send_data.dart';
import 'package:api/view/pages/update_data.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
    routes: {
      '/': (_) => const HomeScreen(),
      '/fetchdata': (_) => const FetchData(),
      '/senddata': (_) => const SendData(),
      '/updatedata': (_) => const UpdateData(),
      '/deletedata': (_) => const DeleteData(),
    },

  ));
}