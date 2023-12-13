//Global Variables
color Black=#000000;
color DarkGreen=#02B703;
color Red=#DE001E;
color DarkRed=#AA021B;
color resetDefaultInk=#FFFFFF;
int appWidth, appHeight;
int size;
PImage BackgroundImage6;
PFont QuestionFont;
PFont ButtonFont;
PFont TitleFont;
PFont DeathFont;
String Title4 = "Congratulations You Won!";
String Ending6Text = "Filler Text";
String ResetButton = "Reset and try again?";
float Ending6Backgroundx, Ending6Backgroundy, Ending6Backgroundwidth, Ending6Backgroundheight;
float Ending6x, Ending6y, Ending6width, Ending6height;
float Title6x, Title6y, Title6width, Title6height;
float ResetButton6x, ResetButton6y, ResetButton6width, ResetButton6height;
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
  String Imagefolder = "Images3";
  String EndingImage4 = "Wolf Image2.jpg";
  //
  Ending6Backgroundx = appWidth*0;
  Ending6Backgroundy = appHeight*0;
  Ending6Backgroundwidth = appWidth-1;
  Ending6Backgroundheight = appHeight-1;
  BackgroundImage6 = loadImage(imagesPath + Imagefolder + open + EndingImage4);
  //
  Ending6x = appWidth*1/5;
  Ending6y = appHeight*1/4;
  Ending6width = appWidth*3/5;
  Ending6height = appHeight*5/13;
  //
  Title6x = appWidth*1/5;
  Title6y = appHeight*1/20;
  Title6width = appWidth*3/5;
  Title6height = appHeight*2/13;
  //
  ResetButton6x = appWidth*2/5;
  ResetButton6y = appHeight*2/3;
  ResetButton6width = appWidth*1/5;
  ResetButton6height = appHeight*2/13;
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
  rect(Ending6Backgroundx, Ending6Backgroundy, Ending6Backgroundwidth, Ending6Backgroundheight);
  image(BackgroundImage6, Ending6Backgroundx, Ending6Backgroundy, Ending6Backgroundwidth, Ending6Backgroundheight);
  rect(Title6x, Title6y, Title6width, Title6height);
  rect(Ending6x, Ending6y, Ending6width, Ending6height);
  rect(ResetButton6x, ResetButton6y, ResetButton6width, ResetButton6height);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>ResetButton6x && mouseX<ResetButton6x+ResetButton6width && mouseY>ResetButton6y && mouseY<ResetButton6y+ResetButton6height) {
    hoverOverColor = Red;
    fill(hoverOverColor);
    rect(ResetButton6x, ResetButton6y, ResetButton6width, ResetButton6height);
    fill(resetDefaultInk);
  }
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(QuestionFont, size); 
  text(Ending6Text, Ending6x, Ending6y, Ending6width, Ending6height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(ButtonFont, size); 
  text(ResetButton, ResetButton6x, ResetButton6y, ResetButton6width, ResetButton6height);
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
