// Example for Core Studio class based on Hype by Joshua Davis.

import hype.*;
import hype.extended.behavior.HRotate;

HDrawablePool pool;

void setup() {
 size(800,800);
 H.init(this).background(#242424);

 pool = new HDrawablePool(200);
 pool.autoAddToStage()
 .add(new HShape("bot1.svg"))
  .onCreate (
   new HCallback() {
    public void run(Object obj) {
     HDrawable d = (HDrawable) obj;
     d
      .strokeWeight(1)
      .stroke(#999999)
      .fill(#202020)
      .loc( (int)random(width), (int)random(height) )
      .anchor( 25, 25 )
      .rotation( (int)random(360) )
      .size( 25 + ((int)random(3)*25) )
     ;
    }
   }
  )
  .requestAll()
 ;
}

void draw() {
 H.drawStage();
}
