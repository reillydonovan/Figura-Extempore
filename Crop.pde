class Crop {

  void display() {
     fill(0);
  beginShape();
  vertex(0, 720);
  vertex(displayWidth, 698);
  vertex(displayWidth, displayHeight);
  vertex(0, displayHeight);
  endShape(CLOSE);
  
  }
}
