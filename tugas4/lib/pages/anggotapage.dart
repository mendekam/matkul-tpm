import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tugas4/const/colors.dart';

import '../data/users.dart';

class AnggotaPage extends StatefulWidget {
  const AnggotaPage({super.key});

  @override
  State<AnggotaPage> createState() => _AnggotaPageState();
}

class _AnggotaPageState extends State<AnggotaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Daftar Anggota"),
          backgroundColor: primary,
        ),
        body: Center(
          child: ListView.builder(
              itemCount: userList.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  title: Text("${userList[index].name}"),
                  subtitle: Text(
                      "NIM : ${userList[index].nim} \nKelas : ${userList[index].kelas}"),
                  trailing: const Icon(Icons.arrow_forward_ios),
                );
              })),
        ));
  }
}
