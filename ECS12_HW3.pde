color selectedColor;
int selectedWidth = 1; //Default to 1
void setup()
{
  size(600, 600);
  background(255);
  
  rectMode(CENTER);
}

void draw()
{
  //Black borders with thickness of 1
  strokeWeight(1);
  stroke(0);
  //White fill for box
  fill(255);
  //Stroke width 1 box
  rect(575, 100, 25, 25);
  line(562.5, 100, 587.5, 100);
  //Stroke width 2 box
  rect(575, 150, 25, 25);
  strokeWeight(4);
  line(562.5, 150, 587.5, 150);
  //Clear image box
  strokeWeight(1);
  rect(575, 200, 25, 25);
  line(562.5, 212.5, 587.5, 187.5);
  line(562.5, 187.5, 587.5, 212.5);  
  //White color box
  fill(255);
  rect(275, 20, 25, 25);
  //Red color box
  fill(255, 0, 0);
  rect(325, 20, 25, 25);
  //Green color box
  fill(0, 255, 0);
  rect(375, 20, 25, 25);
  //Blue color box
  fill(0, 0, 255);
  rect(425, 20, 25, 25);
  //Yellow color box
  fill(255, 255, 0);
  rect(475, 20, 25, 25);
  //Black color box
  fill(0);
  rect(525, 20, 25, 25);
  
  
  if (mousePressed) {
    strokeWeight(selectedWidth);
    stroke(selectedColor);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}


void keyPressed() {
  if (key == 's') {
    save("image.png");
  }
}

void mousePressed() {
  //White color box
  if ((mouseX>262.5) && (mouseY>7.5) && (mouseX<287.5) && (mouseY<27.5)) {
    selectedColor = color(255, 255, 255);
  }
  //Red color box
  if ((mouseX>312.5) && (mouseY>7.5) && (mouseX<337.5) && (mouseY<27.5)) {
    selectedColor = color(255, 0, 0);
  }
  //Green color box
  if ((mouseX>362.5) && (mouseY>7.5) && (mouseX<387.5) && (mouseY<27.5)) {
    selectedColor = color(0, 255, 0);
  }
  //Blue color box
  if ((mouseX>412.5) && (mouseY>7.5) && (mouseX<437.5) && (mouseY<27.5)) {
    selectedColor = color(0, 0, 255);
  }
  //Yellow color box
  if ((mouseX>462.5) && (mouseY>7.5) && (mouseX<487.5) && (mouseY<27.5)) {
    selectedColor = color(255, 255, 0);
  }
  //White color box
  if ((mouseX>512.5) && (mouseY>7.5) && (mouseX<537.5) && (mouseY<27.5)) {
    selectedColor = color(0, 0, 0);
  }  
  //Width 1 box
  if ((mouseX>562.5) && (mouseY>87.5) && (mouseX<587.5) && (mouseY<112.5)) {
    selectedWidth = 1;
  }
  //Width 4 box
  if ((mouseX>562.5) && (mouseY>137.5) && (mouseX<587.5) && (mouseY<162.5)) {
    selectedWidth = 4;
  }
  //Clear image box
  if ((mouseX>562.5) && (mouseY>187.5) && (mouseX<587.5) && (mouseY<212.5)) {
    background(255);
  }
}

