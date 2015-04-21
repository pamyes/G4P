import javax.swing.*;
PImage bg;
color lineColor = color(0);   // black
// cube data
int cuSize = 1000;   //cube size
int dim = 5;     //number of cubes by colum/row 
float numCub= cuSize / dim; //grid size
float boxScale = .75;      //scale 
float boxSize = numCub * boxScale; //size box
// camera
int defDist = 2000;       // default camera distance
int distance = defDist;   // current camera distance
int inputKeyCode = 0;


//---------------------------------------------------------- 
void setup()  
{
  size(600,800, P3D);
  float fov = PI/3.0;
  float cameraZ = (height/2.0) / tan(fov/2.0);
  perspective(fov, float(width)/float(height), cameraZ/100.0, cameraZ*10.0);
  frameRate(.5);
  distance = defDist;
  bg = loadImage("forest3.jpg");
}

void draw()
{   
  background(bg); 
  //if(key =='i') data();
   /*if (key =='b')*/ biology();
  fill(255);
  stroke(lineColor);
  
}
void data(){
  
  
}
void biology(){
  pushMatrix();
  String s0="Group 4 Project";
  String s1="Andrea Macedo";
  String s2="Ximena Vázquez";
  String s3="Constanza Barboza";
  String s4="Pamela Flores";
  textSize(60);
  text(s0, 50, 90);
  textSize(25);
  text(s1,170,560);
  text(s2,170,590);
  text(s3,170,620);
  text(s4,170,650);
  String s="Quadrants";
  textSize(40);
  text(s, 200, 150);
  translate(width/2, height*0.47, -distance); 
  //place to screen center (This is like the things we saw the last semester in processing)
  // draw cubes
  posCamera(+1);
  textSize(90);
  fill(255);
  text(1, -390, 240);
  fill(255);
  text(2, -220, 240);
  fill(255);
  text(3, -20, 240);
  fill(255);
  text(4, 180, 240);
  fill(255);
  text(5, 450, 240);
  strokeWeight(1);
  float d2 = dim * 0.5 - 0.5;
    for (int r=0; r<dim; r++)
    {    
         //if you move the rows and colum rotations you can see a perfect cube
            pushMatrix();
            translate(((r-d2)*numCub), 0, ((r-d2)*numCub)); 
            box(boxSize);
            popMatrix(); 
                  
      }
        popMatrix();
        
    }
void posCamera(int zoomDelta)//makes zoom
{
  distance -= zoomDelta;
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
  JOptionPane.showMessageDialog(null,"Chemistry");
  JOptionPane.showMessageDialog(null,"Peroxide \nOutside:1617s\ninside:2146s");
  JOptionPane.showMessageDialog(null,"Vinegar \nOutside:62s\ninside:34s");
  JOptionPane.showMessageDialog(null,"Filtration \nOutside:17s\ninside:17s");
  JOptionPane.showMessageDialog(null,"Earth texture \nOutside:Sandy Loams\ninside:Loam");
  JOptionPane.showMessageDialog(null,"Earth Ph \nOutside:7.23\ninside:7.25");
  JOptionPane.showMessageDialog(null,"Physics"); 
  JOptionPane.showMessageDialog(null,"In the sun\n Ti=19.1\n Tf=21.2\nIn the shasow \n Ti=20.1.1\n Tf=21.3"); 
}
else if(key=='6') JOptionPane.showMessageDialog(null,"Press the number of the quadrant for information");
}
