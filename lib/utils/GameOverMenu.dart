import 'package:flutter/material.dart';
import 'package:flame/game.dart';

import '../BirdGamePage.dart';

class GameOverMenu extends StatelessWidget {
  final BirdGame game;
  const GameOverMenu({required this.game, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        title: const Text("Game Over"),
        actions: [
          TextButton(
            onPressed: () {
              game.overlays.remove('GameOverMenu');
              game.resumeEngine();
              game.reset(); // Restart game
            },
            child: const Text("Restart"),
          ),
          TextButton(
            onPressed: () {
              game.overlays.remove('GameOverMenu');
              Navigator.pop(context);
            },
            child: const Text("Exit"),
          ),
        ],
      ),
    );
  }
}
