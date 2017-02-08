class Robot {                                 // patern name: Receiver
  int x, y;
  Robot([this.x=0, this.y=0]);
  String get location => "($x, $y)";
  moveUp()    { y--; }
  moveDown()  { y++; }
  moveLeft()  { x--; }
  moveRight() { x++; }
}

class Button {                               // patern name: Invoker
  String name;
  var command;
  Button(this.name, this.command);
  press() { command.call(); }
}

main() {
  var r = new Robot();
  print(r.location);

  var moveUp = new Button("Move Up", r.moveUp);
  var moveRight = new Button("Move Right", r.moveRight);
  var moveLeft = new Button("Move left", r.moveLeft);
  var moveDown = new Button("Move Down", r.moveDown);

  moveDown.press();
  moveDown.press();
  moveRight.press();
  moveDown.press();

  print(r.location);
}
