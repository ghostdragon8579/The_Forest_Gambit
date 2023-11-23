//Global Variables
int appWidth, appHeight;
int size;
PImage BackgroundImage2;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float Ending1x, Ending1y, Ending1width, Ending1height;
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
  String ForestImage = "Forest Image.jpg";
  //
  xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
  BackgroundImage2 = loadImage(imagesPath + Imagefolder + open + ForestImage);
  //
} //End setup
//
void draw() {
  //
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  image(BackgroundImage2, xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
