import javax.swing.*;
PImage bg;
int cuSize = 1500;   //cube size
int dim = 5;     //number of cubes by colum/row 
float numCub= cuSize / dim; //grid size
float boxScale = .75;      //scale 
float boxSize = numCub * boxScale; //size box
//rotation data
float rotX = -3/4*PI;
float rotY = -PI/4;
float iniAngel = 0.002;
float roteAngle= -iniAngel;
int defDist = 2000;      
int distance = defDist;
int inputKeyCode = keyCode;



//---------------------------------------------------------- 
void setup(){
  
  size(800,700, P3D);
  float fov = PI/3.0;
  float cameraZ = (height/2.0) / tan(fov/2.0);
  perspective(fov, float(width)/float(height), cameraZ/100.0, cameraZ*10.0);
  frameRate(0.02);
  bg = loadImage("forest3.jpg");
}

void draw(){ 
  background(bg); 
  fill(255);
  stroke(0);
  g4p(); 

}
void g4p(){
  String s = "Group 4 Project";
  textSize(60);
  text(s, 90, 550);
  textSize(30);
  fill(255);
  text(1, 250, 340);
  fill(255);
  text(2, 320, 340);
  fill(255);
  text(3, 390, 340);
  fill(255);
  text(4, 460, 340);
  fill(255);
  text(5, 530, 340);
  pushMatrix();
  translate(width/2, height*0.1, -distance); 
  // draw cubes
  strokeWeight(1);
  float d2 = dim * 0.5 - 0.5;
    for (int r=0; r<dim; r++)
    {  
       pushMatrix();
       translate(((r-d2)*numCub), 0 , 0); 
       fill(255);
       box(boxSize);
       popMatrix();       
     }
  popMatrix();
}
void keyPressed(){
  if(key=='1'){
    JOptionPane.showMessageDialog(null,"Quadrant 1:\nTotal Species 12");
  }
  else if(key=='2'){
    JOptionPane.showMessageDialog(null,"Quadrant 2:\nTotal Species 7");
}
else if(key=='3'){
    JOptionPane.showMessageDialog(null,"Quadrant 3:\nTotal Species 7");
}
else if(key=='4'){
    JOptionPane.showMessageDialog(null,"Quadrant 4:\nTotal Species 10");
}
else if(key=='5'){
    JOptionPane.showMessageDialog(null,"Quadrant :5\nTotal Species 8");
}
else if(key=='c'){
  JOptionPane.showMessageDialog(null,"Peroxide: \nOutside:1617s\ninside:2146s");
  JOptionPane.showMessageDialog(null,"Vinegar: \nOutside:62s\ninside:34s");
  JOptionPane.showMessageDialog(null,"Filtration: \nOutside:17s\ninside:17s");
  JOptionPane.showMessageDialog(null,"Earth: \nOutside:Sandy Loams\ninside:Loam");
  JOptionPane.showMessageDialog(null,"Ph: \nOutside:7.23\ninside:7.25");  
}
}
