import 'package:flutter/material.dart';
import 'package:project_akhir/models/game_model.dart';

import '../config/colors.dart';

class GameDetailPage extends StatelessWidget {
  static const String routeName = '/game_detail';
  final GameModel game;
  const GameDetailPage({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: primary,
      appBar: AppBar(
        backgroundColor: secondary,
        title: Text(game.title, style: const TextStyle(color: text)),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(game.thumbnail),
            SizedBox(height: 16.0),
            Text(
              game.title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: primary
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Genre: ${game.genre}',
              style: TextStyle(
                fontSize: 18.0,
                color: text
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Platform: ${game.platform}',
              style: TextStyle(
                fontSize: 18.0,
                color: text
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Publisher: ${game.publisher}',
              style: TextStyle(
                fontSize: 18.0,
                color: text
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Developer: ${game.developer}',
              style: TextStyle(
                fontSize: 18.0,
                color: text
              ),
            ),
          ],
        ),
      ),
    );
  }
}
