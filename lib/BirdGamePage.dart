import 'dart:math' as math;

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';

import 'Bird.dart';
import 'Obstacle.dart';


class BirdGame extends FlameGame with HasCollisionDetection, TapDetector {
  late Bird bird;
  late Timer obstacleTimer;

  @override
  Future<void> onLoad() async {
    bird = Bird()
    ..position = size / 2;
    add(bird);
    obstacleTimer = Timer(2, repeat: true)..onTick = () => add(Obstacle());

    obstacleTimer.start();
  }

  @override
  void update(double dt) {
    super.update(dt);
    obstacleTimer.update(dt);
  }

  @override
  void onTap() {
    bird.fly();
  }
}



