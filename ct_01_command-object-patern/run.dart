class Robot {
  int x, y;
  Robot(this.x, this.y);

  String get location => "($x, $y)";

  moveRight() { x++; }
  moveLeft()  { x--; }
  moveUp()   { y++; }
  moveDown() { y--; }
}

main() {
  var r = new Robot(1, 1);
  print("The robot starts at: " + r.location);

  r.moveRight();
  print(r.location);

  var move = r.moveUp;  // the "move" variable is "the command object"
                        // r.moveUp  is a  "tear off method"
  move();
  move();
  move();
  move();

  print(r.location);
}

