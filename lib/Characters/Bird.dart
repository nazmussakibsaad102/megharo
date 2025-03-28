import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import '../BirdGamePage.dart';
import 'Obstacle.dart';

class Bird extends SpriteAnimationComponent with CollisionCallbacks , HasGameRef<BirdGame>{
  double velocityY = 0;
  final double gravity = 500;
  final double jumpForce = -200;
  Bird() : super(size: Vector2(50, 50 )) {
    anchor = Anchor.center;
  }

  @override
  Future<void> onLoad() async {
    final imagesList = [
      await Sprite.load('1.png'),
      await Sprite.load('2.png'),
      await Sprite.load('3.png'),
      await Sprite.load('4.png'),
      await Sprite.load('5.png'),
      await Sprite.load('6.png'),
    ];

    animation = SpriteAnimation.spriteList(imagesList, stepTime: 0.1);

    add(RectangleHitbox());
  }


  @override
  void onCollision(Set<Vector2> intersectionPoints, PositionComponent other) {
    if (other is Obstacle) {
      gameRef.gameOver();
    }

    super.onCollision(intersectionPoints, other);
  }



  void fly() {
    velocityY = jumpForce;
  }

  @override
  void update(double dt) {
    super.update(dt);
    velocityY += gravity * dt;
    position.y += velocityY * dt;
  }
}