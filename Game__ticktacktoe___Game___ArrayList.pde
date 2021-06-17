ArrayList<Element> elements = new ArrayList<Element>();
float size = 40;
void setup () {
  size (1000, 1000);
  background(255, 255, 255);

  for (float y = 0; y <= height; y+=size) {
    for (float x = 0; x <= width; x+= size) {
      elements.add (new Element (x, y, size));
    }
  }
}


void draw () {
  for (Element e : elements) {
    e.draw();
  }
}
