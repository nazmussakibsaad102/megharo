import 'dart:math' as math;
import 'dart:ui';

import 'package:flame/collisions.dart';
import 'package:flame/cache.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';

import 'dart:math' as math;

class Obstacle extends SpriteComponent with CollisionCallbacks {
  Obstacle() : super(size: Vector2(50, 100)) {
    final random = math.Random();
    final isTopObstacle = random.nextBool();
    position = Vector2(400, isTopObstacle ? 0 : 300 + random.nextDouble() * 100);
    angle = isTopObstacle ? 3.14 : 0;
  }

  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('ball.png');
    add(RectangleHitbox());
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.x -= 100 * dt;
    if (position.x < -size.x) removeFromParent();
  }
}
