//Global Variables
PFont QuestionFont;
color Gray=#AFAFAF;
color resetDefaultInk=#FFFFFF;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float Questionx, Questiony, Questionwidth, Questionheight;
//
void setup() {
//
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width:"+displayWidth, "\tDisplay Height: "+displayHeight);
  //
  //fullScreen();
  size(1000, 800);
  int appWidth = width;
  int appHeight = height;
  //
  xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
  //
  Questionx = appWidth*1/5;
  Questiony = appHeight*1/6;
  Questionwidth = appWidth*3/5;
  Questionheight = appHeight*3/13;
  //
} //End setup
//
void draw() {
  //
  fill(Gray);
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  fill(resetDefaultInk);
  rect(Questionx, Questiony, Questionwidth, Questionheight);
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
