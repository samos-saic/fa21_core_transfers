color bg= (20);

void setup(){
  size(800, 800);
  background(bg);
}

void draw(){
 
  ellipse(mouseX, mouseY, 50, 50);
  fill(random(12)* 21, (random(12)* 21), (random(12)* 21));
}

void keyPressed(){
  if (key == 'c'){
    background(bg);
  }
  
}
