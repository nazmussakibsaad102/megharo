import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:megharo/utils/GameOverMenu.dart';

import 'BirdGamePage.dart';

class GamePage extends StatelessWidget {
  const GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GameWidget(
        game: BirdGame(),
        overlayBuilderMap: {
          'GameOverMenu': (context, BirdGame game) => GameOverMenu(game: game),
        },
      ),
    );
  }
}
