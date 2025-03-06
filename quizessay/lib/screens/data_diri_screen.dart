import 'package:flutter/material.dart';

class DataDiriScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Diri')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('asset/Waramatja.jpg'),
            ),
            SizedBox(height: 16),
            Text('Nama: Warmatja Yuda Putra'),
            Text('NIM: 123220163'),
            Text('Kelas: IF - H'),
            Text('Hobby: Traveling'),
          ],
        ),
      ),
    );
  }
}
