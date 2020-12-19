

class Triangle {
   color code; 
   
   Point p0,p1,p2;
     
   Triangle(Point _p0, Point _p1, Point _p2 ){
     p0 = _p0;
     p1 = _p1;
     p2 = _p2;
     
     printInfo();
     
     
     if(ccw()){
       
      //if counter colock wise choose this color or else choose the other one
       code = color(255,45,67);
       
     
   }else{
     
     
     code = color(0,128,0);
     
   }
   }
   
     float determinant() {
     // inorder to calculate the area of the triangle  where three coordinates are given we usually use determinant formula. 
     
     
     
     
     
     //formaul = 1/2 bracketopens|x1 x2|  plus |x2 x3|   plus |x3 x1| bracket close
     //                          |y1 y2|       |y2 y3|        |y3 y1|
     //              
     // in this function we are only going to calculate the determinant of the three points of the triangle. 
    return  (p1.getx()*p2.gety()-p2.getx()*p1.gety())-(p0.getx()*p2.gety()-p2.getx()*p0.gety())+(p0.getx()*p1.gety()-p1.getx()*p0.gety()); 
     
   }
   
   void draw(){
    
     
     fill(code);
     triangle(p0.getx(), p0.gety(), p1.getx(), p1.gety(), p2.getx(), p2.gety());
    
    
   }
   
   // check if a triangle is oriented counterclockwise
   boolean ccw(){
     //since the area of given vertics can be find by using determinant formula.
     return determinant()>0;
   }
   
   // check if a triangle is oriented clockwise
   boolean cw(){
     // TODO: Fill in this function
     return determinant()<0;
   }
   
   // returns the area (in pixels) of the triangle
   float area(){
     // TODO: Fill in this function
     
     
     
     return determinant()/2; 
   }
   
   // returns a PVector where x,y,z are the internal angles of the triangle (in degrees)
   PVector angles(){
     // TODO: Fill in this function
     PVector alpha, beta, gamma; 
     float Magnitude_alpha, Magnitude_beta, Magnitude_gamma;
     float a_bdot,b_gdot, g_adot; 
     float cos_a_b, cos_b_g, cos_g_b;
     
     alpha = p0.getvector();
     beta =  p1.getvector();
     gamma = p2.getvector();
     
     // There are threee things that I am trying to do 
     //finding the magnitude of the functions
     //Finding all th dot products
     // finding the angle dot product that is cosx = vector time vector divided by magnitude formula 
     Magnitude_alpha = alpha.mag();
     Magnitude_beta = beta.mag();
     Magnitude_gamma = gamma.mag(); 
     
     a_bdot = alpha.dot(beta);  //for example PVector v1 = new PVector(10,20,0) 
     b_gdot = beta.dot(gamma);  // PVector v2 = new PVector(60, 80, 0) 
     g_adot = gamma.dot(alpha);   // float d = v1.dot(v2);
      //Above shown is the example how the dot product works. 
      
     cos_a_b = degrees(cos(a_bdot/(Magnitude_alpha*Magnitude_beta)));
     cos_b_g  = degrees(cos(b_gdot/(Magnitude_beta*Magnitude_gamma)));
     cos_g_b  = degrees(cos(g_adot/(Magnitude_gamma*Magnitude_alpha)));
     
     
    
     return new PVector(cos_a_b, cos_b_g,cos_g_b);
   }
   
   
 
   void printInfo(){
     println("Triangle ===============");
     println("    Area: " + area() + " px" );
     println("    CW: " + cw() );
     println("    CCW: " + ccw() );
     println("    Internal Angles: " + angles() + " degrees" );
   }
   
}
