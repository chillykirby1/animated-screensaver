float x;
float y;
float radius;
float angle;


void setup() {
  size(800, 800);
  background(0);
  noStroke();
  ellipseMode(CENTER);
     setStart(400, 400);
     if(radius>525){
       setStart(400,400);
       fill(255);
       //reset everything
     }     
}

void draw() { 
    translate(width / 2, height / 2);
    angle += 0.02;
    radius += 0.1;
    if(radius < 0)
        radius = 0;
    x = sin(angle) * radius;
    y = cos(angle) * radius;
    fill(random(0,255),random(0,250),random(0,255));
    ellipse(x, y, 15, 15);
    delay(0);
  if(radius >525){
 reset();
   }
}
 
void setStart(int x, int y) {
    angle = atan2(x - width / 2, y - height / 2);
    radius = dist(width / 2, height / 2, x, y);
    this.x = x;
    this.y = y;

}

void reset(){
    size(800, 800);
  background(0);
  noStroke();
  ellipseMode(CENTER);
     setStart(400, 400);
  translate(width / 2, height / 2);
    angle += 0.02;
    radius += 0.1;
    if(radius < 0)
        radius = 0;
    x = sin(angle) * radius;
    y = cos(angle) * radius;
    fill(random(0,255),random(0,250),random(0,255));
    ellipse(x, y, 15, 15);
    delay(0);
//reset everything
 }