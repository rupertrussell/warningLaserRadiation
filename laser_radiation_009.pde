// Warning Laser Radiation
// by Rupert Russell
// updated version 21 July 2018
// http://www.rupert.id.au/tutorials/processing/examples.php
// Based on the https://www.finlex.fi/data/normit/27617/ST1-3e.pdf

color bgColor = color(255,255,0);
PFont font;

int screenWidth = 6770;
int screenHeight = 5910;

float xMargin = 0;
float yMargin = 0;

// int sm = 95;
float largeScale = screenWidth * 0.194;
float smallScale = screenWidth * 0.134;
int margin = 210;

void setup() {
size(6770,5910);
smooth();
noLoop();
strokeWeight(410);
stroke(0);
strokeCap(ROUND);
strokeJoin(ROUND);
}

void draw() {
background(255);
fill(255,210,0);

triangle(0 + margin,screenHeight - margin, screenWidth /2, 0 + margin, screenWidth - margin,screenHeight - margin);

translate(width *0.504, height * 0.637 );
pushMatrix();

fill(0);
strokeCap(SQUARE);
strokeWeight(15);
// Large

for (float i = 0; i < 360; i = i+30) {
pushMatrix();
rotate(radians(i));

beginShape();
vertex(0, 0);
vertex(largeScale* - 0.04, -largeScale);
vertex(largeScale*  0.04, -largeScale);
vertex(0, 0);
endShape(CLOSE);

popMatrix();
}

// the laserbeam 
pushMatrix();
rotate(radians(90));
beginShape();
vertex(largeScale* - 0.04, 0);
vertex(largeScale* - 0.04, -2000);
vertex(largeScale*  0.04, -2000);
vertex(largeScale*  0.04, 0);
endShape(CLOSE);
popMatrix();

// Small rays
fill(0);
stroke(0);
for (float i = 0; i < 360; i = i+30) {
pushMatrix();
rotate(radians(i+15));
beginShape();
vertex(0, 0);
vertex(smallScale* - 0.04, -smallScale);
vertex(smallScale*  0.04, -smallScale);
vertex(0, 0);
endShape(CLOSE);
popMatrix();

}
popMatrix();

ellipse(0,0,smallScale * 0.98 , smallScale * 0.98 );

save("Laser_v009.png");
exit();

}
