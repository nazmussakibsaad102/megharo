import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'Bird.dart';
import 'Obstacle.dart';


class BirdGame extends FlameGame with HasCollisionDetection, TapDetector {
  late Bird bird;
  late Timer obstacleTimer;
  bool isGameOver = false;

  @override
  Future<void> onLoad() async {
    startGame();
  }

  void gameOver() {
    if (!isGameOver) {
      isGameOver = true;
      overlays.add('GameOverMenu');
      pauseEngine();
      obstacleTimer.stop();
    }
  }

  void startGame() {
    isGameOver = false;
    removeAll(children);

    bird = Bird()
      ..position = size / 2;
    add(bird);

    obstacleTimer = Timer(2, repeat: true, onTick: () {
      if (!isGameOver) add(Obstacle());
    });

    obstacleTimer.start();
  }

  void reset() {
    overlays.remove('GameOverMenu');
    removeAll(children);
    startGame();
    resumeEngine();
  }

  @override
  void update(double dt) {
    super.update(dt);
    if (!isGameOver) obstacleTimer.update(dt);
  }

  @override
  void onTap() {
    if (!isGameOver) bird.fly();
  }
}






