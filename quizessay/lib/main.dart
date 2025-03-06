import 'package:flutter/material.dart';
import 'screens/trapesium_screen.dart';
import 'screens/kubus_screen.dart';
import 'screens/penghitung_hari_screen.dart';
import 'screens/data_diri_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aplikasi Quiz Essay')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => TrapesiumScreen()));
            },
            child: Text('Menu Trapesium'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => KubusScreen()));
            },
            child: Text('Menu Kubus'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => PenghitungHariScreen()));
            },
            child: Text('Menu Penghitung Hari'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => DataDiriScreen()));
            },
            child: Text('Menu Data Diri'),
          ),
        ],
      ),
    );
  }
}
