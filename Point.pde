

class Point {
  
   PVector p;

   Point( float x, float y ){
      // TODO: Fill in this function
      p = new PVector(x,y);
      
   }

   void draw(){
    // TODO: Fill in this function
    fill(color(0,0,0));
    ellipse(p.x,p.y,5,5);
   }
   
   public float getx(){ //accessors 
     return p.x;
}
   public float gety(){  //accessors 
     return p.y;
   }
   public PVector getvector(){   //accessors
     return p;
     
}
}
