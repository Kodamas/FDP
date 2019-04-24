void herradibujo() {
   if (mousePressed) {
    background (255);
  } else {
    background(0);
  }
  for (int i=0; i<width; i++) {
    stroke(random(255), random(255), random(255));
    point(i, random(height));
  }
  rayar.beginDraw();
  if (mousePressed) {
    rayar.stroke(0);
    rayar.line(mouseX, mouseY, pmouseX, pmouseY);
  }
  rayar.endDraw();
  image(rayar, 0, 0);
}
