import 'package:flutter/material.dart';
import '../config/colors.dart';
import '../models/game_model.dart';
import '../services/game_service.dart';
import 'game_detail_page.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<GameModel> _games = [];

  @override
  void initState() {
    super.initState();
    _fetchGames();
  }

  Future<void> _fetchGames() async {
    try {
      final gameService = GameService();
      final games = await gameService.fetchGames();
      print(games);
      setState(() {
        _games = games;
      });
    } catch (error) {
      print('Failed to fetch games: $error');
    }
  }

  void _navigateToGameDetail(GameModel game) {
    Navigator.pushNamed(
      context,
      GameDetailPage.routeName,
      arguments: game,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _games.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemBuilder: (context, index) {
          final game = _games[index];
          return GestureDetector(
            onTap: () => _navigateToGameDetail(game),
            child: Card(
              color: secondary,
              child: Column(
                children: [
                  Image.network(game.thumbnail),
                  const SizedBox(height: 8.0),
                  Text(game.title, style: const TextStyle(color: text)),
                  Text(game.genre, style: const TextStyle(color: text)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
