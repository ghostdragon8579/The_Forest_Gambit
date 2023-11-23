//Global Variables
color Black=#000000;
color DarkGreen=#02B703;
color resetDefaultInk=#FFFFFF;
int appWidth, appHeight;
int size;
PImage BackgroundImage2;
PFont TitleFont;
String Title2 = "Congratulations You Won!";
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float Ending1x, Ending1y, Ending1width, Ending1height;
float Title2x, Title2y, Title2width, Title2height;
float ResetButton1x, ResetButton1y, ResetButton1width, ResetButton1height;
//
void setup() {
//
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width:"+displayWidth, "\tDisplay Height: "+displayHeight);
  //
  //fullScreen();
  size(1000, 800);
  appWidth = width;
  appHeight = height;
  //
  String open = "/";
  String up = "..";
  String imagesPath = up + open;
  String Imagefolder = "Images";
  String ForestImage = "Forest_Exit_Ending.jpg";
  //
  xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
  BackgroundImage2 = loadImage(imagesPath + Imagefolder + open + ForestImage);
  //
  Ending1x = appWidth*1/5;
  Ending1y = appHeight*1/4;
  Ending1width = appWidth*3/5;
  Ending1height = appHeight*5/13;
  //
  Title2x = appWidth*1/5;
  Title2y = appHeight*1/20;
  Title2width = appWidth*3/5;
  Title2height = appHeight*2/13;
  //
  //ResetButton1x = ;
  //ResetButton1y = ;
  //ResetButton1width = ;
  //ResetButton1height = ;
  //
  TitleFont = createFont("Times New Roman Bold", 55);
  //
} //End setup
//
void draw() {
  //
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  image(BackgroundImage2, xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  rect(Ending1x, Ending1y, Ending1width, Ending1height);
  rect(Title2x, Title2y, Title2width, Title2height);
  //
  fill(DarkGreen);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(TitleFont, 50); 
  text(Title2, Title2x, Title2y, Title2width, Title2height);
  fill(resetDefaultInk);
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
