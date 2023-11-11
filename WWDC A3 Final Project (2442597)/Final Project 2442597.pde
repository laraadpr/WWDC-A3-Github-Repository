class Landscape {
int horizon;
color skyColor;
color sunColor;
int sunX;
int sunY;
float sandHue;

Landscape() {
horizon = height / 2;
sunX = width / 2;
sandHue = random(20, 40);
setColors();
  }

void draw() {
setColors();

background(skyColor);

fill(sunColor);
ellipse(sunX, sunY, 150, 150);

noStroke();
fill(200, 69, 0);
rect(0, horizon, width, height - horizon);
  }

  void setColors() {
skyColor = lerpColor(color(135, 206, 250), color(255, 165, 0), map(sunX, 0, width, 0, 1));
sunColor = lerpColor(color(255, 255, 0), color(255, 204, 153), map(sunX, 0, width, 0, 1));

sandHue = map(mouseX, 0, width, 40, 40);
  }

void moveSun(int mouseX) {
sunX = mouseX;
  }
}

Landscape landscape;

void setup() {
size(800, 600);
landscape = new Landscape();
}

void draw() {
landscape.draw();
}

void mouseMoved() {
landscape.moveSun(mouseX);
}
