import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tugas4/const/colors.dart';
import 'package:tugas4/widget/rekomendasicard.dart';

import '../data/warmindo.dart';

class FavoritePage extends StatefulWidget {
  final List<Warmindo> warmindos;
  const FavoritePage({super.key, required this.warmindos});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  List<Warmindo> favoriteWarmindo = [];

  @override
  void initState() {
    super.initState();
    favoriteWarmindo = widget.warmindos.where((element) => element.isLiked).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Warmindo"),
        backgroundColor: primary,
      ),
      body: ListView.builder(
        itemCount: favoriteWarmindo.length,
        itemBuilder: ((context, index) {
          return RekomendasiCard(warmindo: favoriteWarmindo[index]);
        })),
    );
  }
}