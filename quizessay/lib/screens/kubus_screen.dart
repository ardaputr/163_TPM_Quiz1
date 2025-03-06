import 'package:flutter/material.dart';

class KubusScreen extends StatefulWidget {
  @override
  _KubusScreenState createState() => _KubusScreenState();
}

class _KubusScreenState extends State<KubusScreen> {
  final sisiController = TextEditingController();

  double volume = 0, keliling = 0;

  void hitung() {
    double s = double.parse(sisiController.text);

    setState(() {
      volume = s * s * s;
      keliling = 12 * s;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu Kubus')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: sisiController,
              decoration: InputDecoration(labelText: 'Masukkan panjang sisi'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: hitung, child: Text('Hitung')),
            SizedBox(height: 20),
            Text('Volume: $volume'),
            Text('Keliling: $keliling'),
          ],
        ),
      ),
    );
  }
}
