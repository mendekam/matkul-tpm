import 'package:flutter/material.dart';
import 'package:tugas4/const/colors.dart';
import 'package:tugas4/widget/rekomendasicard.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/warmindo.dart';

class RekomendasiPage extends StatefulWidget {
  const RekomendasiPage({super.key});

  @override
  State<RekomendasiPage> createState() => _RekomendasiPageState();
}

class _RekomendasiPageState extends State<RekomendasiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rekomendasi Warmindo"),
        backgroundColor: primary,
      ),
      body: ListView.builder(
        itemCount: warmindoList.length,
        itemBuilder: ((context, index) {
        return GestureDetector(
          child: RekomendasiCard(warmindo: warmindoList[index]),
        );
      })),
    );
  }
}
