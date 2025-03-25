
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

class Bird extends SpriteAnimationComponent with CollisionCallbacks {
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