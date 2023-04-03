import 'package:flutter/material.dart';
import 'package:uts_tpm/config/colors.dart';

import '../data/users.dart';

class ProfilePage extends StatelessWidget {
  String nim;
  ProfilePage({super.key, required this.nim});

  @override
  Widget build(BuildContext context) {
    int index = checkUser();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: primary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(140),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 120,
                  backgroundImage: NetworkImage(userList[index].urlFoto),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                userList[index].name,
                style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 18,
              ),
              Text(userList[index].nim,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text("Detail"),
                              content: Text(
                                  "NIM: ${userList[index].nim}\nName: ${userList[index].name}\nKelas: ${userList[index].kelas}\nTempat, Tanggal Lahir: ${userList[index].tempatLahir}, ${userList[index].tanggalLahir}\nAlamat: ${userList[index].detail}"),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text("Kembali"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ));
                  },
                  child: const Text("Detail")),
            ],
          ),
        ),
      ),
    );
  }

  int checkUser() {
    var index;
    for (var element in userList) {
      var contain = userList.where((element) => element.nim == nim);
      if (contain.contains(element)) {
        index = userList.indexOf(element);
      }
    }
    return index;
  }
}
