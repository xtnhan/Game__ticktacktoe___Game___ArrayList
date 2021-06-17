class Element {

  float x;
  float y;
  float r;
  boolean  isHover;
  boolean isClicked;

  Element (float xx, float yy, float rr) {
    x = xx;
    y = yy;
    r = rr;
    isHover = false;
    isClicked = false;
  }

  void draw () {
    rectMode(CENTER);
    noFill();
    rect(x, y, r, r);

    if (isClicked == false && mousePressed == false) {
      if (dist(x, y, mouseX, mouseY) <= r/2) {
        isHover = true;
        println("In");
        if (mouseButton == LEFT) {
          isClicked = true;
          fill(255, 255, 0);
          circle(x, y, r);
        }
        if (mouseButton == RIGHT) {
          isClicked = true;
          fill(255, 0, 0);
          circle(x, y, r);
        }
      } else {   
        isHover = false;
      }
    }
  }

  void update () {
  }
}
