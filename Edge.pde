

class Edge{
  
   Point p0,p1;
      
   Edge(Point _p0, Point _p1 ){
     p0 = _p0;
     p1 = _p1;
     
     
   }
   
   void draw(){
     line(p0.getx(),p0.gety(), p1.getx(), p1.gety());
   }
   
   float length(){
     dist(p0.getx(), p0.gety(), p1.getx(), p1.gety());
     return 0;
   }
   
   void printInfo(){
     println("Edge ===============");
     println("    Length: " + length() + " px" );
   }   
}
