import 'package:flutter/material.dart';
import 'package:uts_tpm/config/colors.dart';

import 'drawer.dart';

class HomePage extends StatelessWidget {
  String nim;
  HomePage({super.key, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UTS TPM', style: TextStyle(color: base)),
        backgroundColor: primary,
      ),
      body: Center(
        child: Text('Selamat Datang $nim'),
      ),
      drawer: DrawerWidget(nim: nim),
    );
  }
}
