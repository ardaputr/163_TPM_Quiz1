import 'package:flutter/material.dart';

class PenghitungHariScreen extends StatefulWidget {
  @override
  _PenghitungHariScreenState createState() => _PenghitungHariScreenState();
}

class _PenghitungHariScreenState extends State<PenghitungHariScreen> {
  final hariController = TextEditingController();
  String hasil = '';

  void cekHari() {
    int angka = int.parse(hariController.text);
    List<String> hari = [
      'Senin',
      'Selasa',
      'Rabu',
      'Kamis',
      'Jumat',
      'Sabtu',
      'Minggu'
    ];

    setState(() {
      hasil =
          (angka >= 1 && angka <= 7) ? hari[angka - 1] : 'Input tidak valid';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Penghitung Hari')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
                controller: hariController,
                decoration: InputDecoration(labelText: 'Masukkan angka 1-7')),
            ElevatedButton(onPressed: cekHari, child: Text('Cek Hari')),
            Text(hasil),
          ],
        ),
      ),
    );
  }
}
