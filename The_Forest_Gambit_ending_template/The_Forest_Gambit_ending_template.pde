//Global Variables
color Black=#000000;
color DarkGreen=#02B703;
color Red=#DE001E;
color resetDefaultInk=#FFFFFF;
int appWidth, appHeight;
int size;
PImage BackgroundImage2;
PFont QuestionFont;
PFont ButtonFont;
PFont TitleFont;
String Title2 = "Congratulations You Won!";
String Ending1Text = "You decided that the forest wasn't safe and decided to leave. You make it back home safe and sound.";
String ResetButton1 = "Reset and try again?";
float Ending1Backgroundx, Ending1Backgroundy, Ending1Backgroundwidth, Ending1Backgroundheight;
float Ending1x, Ending1y, Ending1width, Ending1height;
float Title4x, Title4y, Title4width, Title4height;
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
  Ending1Backgroundx = appWidth*0;
  Ending1Backgroundy = appHeight*0;
  Ending1Backgroundwidth = appWidth-1;
  Ending1Backgroundheight = appHeight-1;
  BackgroundImage2 = loadImage(imagesPath + Imagefolder + open + ForestImage);
  //
  Ending1x = appWidth*1/5;
  Ending1y = appHeight*1/4;
  Ending1width = appWidth*3/5;
  Ending1height = appHeight*5/13;
  //
  Title4x = appWidth*1/5;
  Title4y = appHeight*1/20;
  Title4width = appWidth*3/5;
  Title4height = appHeight*2/13;
  //
  ResetButton1x = appWidth*2/5;
  ResetButton1y = appHeight*2/3;
  ResetButton1width = appWidth*1/5;
  ResetButton1height = appHeight*2/13;;
  //
  QuestionFont = createFont("Arial", 55);
  ButtonFont = createFont("Calibri", 55);
  TitleFont = createFont("Times New Roman Bold", 55);
  //
} //End setup
//
void draw() {
  //
  rect(Ending1Backgroundx, Ending1Backgroundy, Ending1Backgroundwidth, Ending1Backgroundheight);
  image(BackgroundImage2, Ending1Backgroundx, Ending1Backgroundy, Ending1Backgroundwidth, Ending1Backgroundheight);
  rect(Ending1x, Ending1y, Ending1width, Ending1height);
  rect(Title4x, Title4y, Title4width, Title4height);
  rect(ResetButton1x, ResetButton1y, ResetButton1width, ResetButton1height);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>ResetButton1x && mouseX<ResetButton1x+ResetButton1width && mouseY>ResetButton1y && mouseY<ResetButton1y+ResetButton1height) {
    hoverOverColor = Red;
    fill(hoverOverColor);
    rect(ResetButton1x, ResetButton1y, ResetButton1width, ResetButton1height);
    fill(resetDefaultInk);
  }
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(QuestionFont, 40); 
  text(Ending1Text, Ending1x, Ending1y, Ending1width, Ending1height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(ButtonFont, 30); 
  text(ResetButton1, ResetButton1x, ResetButton1y, ResetButton1width, ResetButton1height);
  fill(resetDefaultInk);
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
