import 'package:api/view/pages/fetch_data.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/fetchdata');}, child: const Text('Fetch Data')),
              const SizedBox(width: 12,),
              ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/senddata');}, child: const Text('Send Data')),
            ],
          ),
          const SizedBox(height: 12,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/updatedata');}, child: const Text('Update Data')),
              const SizedBox(width: 12,),
              ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/deletedata');}, child: const Text('Delete Data')),
            ],
          )
        ],
      ),
    );
  }
}
