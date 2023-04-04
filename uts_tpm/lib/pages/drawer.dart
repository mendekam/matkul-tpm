import 'package:flutter/material.dart';
import 'package:uts_tpm/pages/profilepage.dart';

import '../config/colors.dart';
import 'calculatorpage.dart';
import 'calendarpage.dart';
import 'loginpage.dart';

class DrawerWidget extends StatelessWidget {
  String nim;
  DrawerWidget({super.key, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: base,
      child: Column(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: primary,
            ),
            child: Text('Tugas UTS Teknologi Pemrograman Mobile',
                style: TextStyle(color: base)),
          ),
          ListTile(
            title: const Text('Kalkulator'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CalculatorPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Kalender'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CalendarPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Profil'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProfilePage(
                          nim: nim,
                        )),
              );
            },
          ),
          Expanded(child: Container()),
          ListTile(
            title: Row(
              children: const <Widget>[
                Icon(Icons.logout),
                SizedBox(
                  width: 10,
                ),
                Text('Logout'),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}
