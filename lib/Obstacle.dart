import 'dart:math' as math;
import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/cache.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';

class Obstacle extends SpriteComponent with CollisionCallbacks {


  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('ball.png');

  }

  Obstacle() : super(size: Vector2(50, 100)) {
    final random = math.Random();
    final isTopObstacle = random.nextBool();
    position = Vector2(400, isTopObstacle ? 0 : 300 + random.nextDouble() * 100);
    angle = isTopObstacle ? 3.14 : 0; // Flip the sprite if needed
    size = Vector2(50, 100);
    position = Vector2(400, (100 + (300 * (math.Random().nextDouble()))));
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.x -= 100 * dt;
    if (position.x < -size.x) removeFromParent();
  }
}