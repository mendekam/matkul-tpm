import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:url_launcher/url_launcher.dart';

import '../data/warmindo.dart';
import 'likebutton.dart';

class RekomendasiCard extends StatefulWidget {
  final Warmindo warmindo;
  const RekomendasiCard({super.key, required this.warmindo});

  @override
  State<RekomendasiCard> createState() => _RekomendasiCardState();
}

class _RekomendasiCardState extends State<RekomendasiCard> {
  bool isLiked = false;
  //final List<Warmindo> list = warmindoList;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        ListTile(
          leading: Image.network(
            widget.warmindo.imageUrl,
            fit: BoxFit.fitWidth,
            height: 200,
          ),
          title: Text(widget.warmindo.name),
          subtitle: Text(widget.warmindo.description),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            LikeButton(
              isLiked: isLiked,
              onLiked: (isLiked) {
                widget.warmindo.isLiked = isLiked;
              },
            ),
            IconButton(
                onPressed: () {
                  launchUrl(Uri.parse(widget.warmindo.url));
                },
                icon: const Icon(Icons.launch)),
          ],
        ),
      ],
    ));
  }
}
