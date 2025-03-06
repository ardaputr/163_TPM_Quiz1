import 'package:flutter/material.dart';

class TrapesiumScreen extends StatefulWidget {
  @override
  _TrapesiumScreenState createState() => _TrapesiumScreenState();
}

class _TrapesiumScreenState extends State<TrapesiumScreen> {
  final aController = TextEditingController();
  final bController = TextEditingController();
  final tController = TextEditingController();
  final s1Controller = TextEditingController();
  final s2Controller = TextEditingController();

  double luas = 0, keliling = 0;

  void hitung() {
    double a = double.parse(aController.text);
    double b = double.parse(bController.text);
    double t = double.parse(tController.text);
    double s1 = double.parse(s1Controller.text);
    double s2 = double.parse(s2Controller.text);

    setState(() {
      luas = 0.5 * (a + b) * t;
      keliling = a + b + s1 + s2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu Trapesium')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
                controller: aController,
                decoration: InputDecoration(labelText: 'Sisi a')),
            TextField(
                controller: bController,
                decoration: InputDecoration(labelText: 'Sisi b')),
            TextField(
                controller: tController,
                decoration: InputDecoration(labelText: 'Tinggi')),
            TextField(
                controller: s1Controller,
                decoration: InputDecoration(labelText: 'Sisi miring 1')),
            TextField(
                controller: s2Controller,
                decoration: InputDecoration(labelText: 'Sisi miring 2')),
            ElevatedButton(onPressed: hitung, child: Text('Hitung')),
            Text('Luas: $luas'),
            Text('Keliling: $keliling'),
          ],
        ),
      ),
    );
  }
}
