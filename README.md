# Megharo

This is a simple 2D game built using the **Flame** game engine in Flutter. The player controls a bird that must fly and dodge obstacles. The bird has an animation for flying, and the player can tap the screen to make the bird jump. Obstacles randomly spawn from the top or bottom of the screen and move toward the bird. The player needs to avoid hitting these obstacles to stay alive. If the bird collides with any obstacles, the game ends.  

### Features:  
- **Bird Animation**: The bird has an animated flying sequence using a sprite sheet.  
- **Gravity**: The bird is affected by gravity, simulating a natural falling motion while it also responds to player input to jump.  
- **Random Obstacles**: Obstacles spawn at random heights and move toward the bird, requiring the player to dodge them.  
- **Collision Detection**: The game uses collision detection to check for interaction between the bird and obstacles.  

### Assets:  
- Bird sprite images for animation.  
- Obstacle sprite image for the obstacles.  

### Game Mechanics:  
- Tap the screen to make the bird fly upwards.  
- Avoid obstacles that come towards the bird from random directions.  
- The game ends if the bird collides with any obstacle.  

### Setup:  
1. Ensure you have **Flutter** installed and set up on your machine.  
2. Install **Flutter Version Manager (FVM)** if you haven't already:  
   ```sh
   dart pub global activate fvm
   ```  
3. Clone this repository.  
4. Use FVM to install and use the correct Flutter version:  
   ```sh
   fvm install  
   fvm use  
   ```  
5. Run `fvm flutter pub get` to install the dependencies.  
6. Make sure to add your asset images (bird and obstacle sprites) to the `assets` folder and update the `pubspec.yaml` accordingly.  

---

This ensures that the correct Flutter version is used, preventing compatibility issues. Let me know if you need any tweaks! 🚀
