import 'package:flutter/material.dart';

import '../config/colors.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/foto.jpg'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Abid Bilal',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: text), 
            ),
            SizedBox(height: 8.0),
            Text(
              'Tempat, Tanggal Lahir : Yogyakarta 7 Desember 2001',
              style: TextStyle(fontSize: 16.0, color: text),
            ),
            SizedBox(height: 8.0),
            Text(
              'NIM: 123200069',
              style: TextStyle(fontSize: 16.0, color: text),
            ),
            SizedBox(height: 8.0),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/konversi');
            }, child: Text('Konversi Mata Uang', style: TextStyle(color: text),))
          ],
        ),
      ),
    );
  }
}
