//Global Variables
color Black=#000000;
color DarkGreen=#02B703;
color Red=#DE001E;
color DarkRed=#AA021B;
color resetDefaultInk=#FFFFFF;
int appWidth, appHeight;
int size;
PImage BackgroundImage4;
PFont QuestionFont;
PFont ButtonFont;
PFont TitleFont;
PFont DeathFont;
String Title4 = "Congratulations You Won!";
String Ending3Text = "Filler Text";
String ResetButton = "Reset and try again?";
float Ending3Backgroundx, Ending3Backgroundy, Ending3Backgroundwidth, Ending3Backgroundheight;
float Ending3x, Ending3y, Ending3width, Ending3height;
float Title6x, Title6y, Title6width, Title6height;
float ResetButton3x, ResetButton3y, ResetButton3width, ResetButton3height;
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
  String EndingImage2 = "Death Image 1.jpg";
  //
  Ending3Backgroundx = appWidth*0;
  Ending3Backgroundy = appHeight*0;
  Ending3Backgroundwidth = appWidth-1;
  Ending3Backgroundheight = appHeight-1;
  BackgroundImage4 = loadImage(imagesPath + Imagefolder + open + EndingImage2);
  //
  Ending3x = appWidth*1/5;
  Ending3y = appHeight*1/4;
  Ending3width = appWidth*3/5;
  Ending3height = appHeight*5/13;
  //
  Title6x = appWidth*1/5;
  Title6y = appHeight*1/20;
  Title6width = appWidth*3/5;
  Title6height = appHeight*2/13;
  //
  ResetButton3x = appWidth*2/5;
  ResetButton3y = appHeight*2/3;
  ResetButton3width = appWidth*1/5;
  ResetButton3height = appHeight*2/13;
  //
  QuestionFont = createFont("Arial", 55);
  ButtonFont = createFont("Calibri", 55);
  TitleFont = createFont("Times New Roman Bold", 55);
  DeathFont = createFont("Papyrus", 55);
  //
} //End setup
//
void draw() {
  //
  rect(Ending3Backgroundx, Ending3Backgroundy, Ending3Backgroundwidth, Ending3Backgroundheight);
  image(BackgroundImage4, Ending3Backgroundx, Ending3Backgroundy, Ending3Backgroundwidth, Ending3Backgroundheight);
  rect(Ending3x, Ending3y, Ending3width, Ending3height);
  rect(Title6x, Title6y, Title6width, Title6height);
  rect(ResetButton3x, ResetButton3y, ResetButton3width, ResetButton3height);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>ResetButton3x && mouseX<ResetButton3x+ResetButton3width && mouseY>ResetButton3y && mouseY<ResetButton3y+ResetButton3height) {
    hoverOverColor = Red;
    fill(hoverOverColor);
    rect(ResetButton3x, ResetButton3y, ResetButton3width, ResetButton3height);
    fill(resetDefaultInk);
  }
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(QuestionFont, size); 
  text(Ending3Text, Ending3x, Ending3y, Ending3width, Ending3height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(ButtonFont, size); 
  text(ResetButton, ResetButton3x, ResetButton3y, ResetButton3width, ResetButton3height);
  fill(resetDefaultInk);
  //
  fill(DarkGreen);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(TitleFont, size); 
  text(Title4, Title6x, Title6y, Title6width, Title6height);
  fill(resetDefaultInk);
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
