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
String Ending7Text = "You hide in a hollow tree. You hear the wolves howl as they pass you by and continue on their hunt. You make it out of the forest and make it back home safe and sound.";
String ResetButton = "Reset and try again?";
float Ending7Backgroundx, Ending7Backgroundy, Ending7Backgroundwidth, Ending7Backgroundheight;
float Ending7x, Ending7y, Ending7width, Ending7height;
float ResetButton7x, ResetButton7y, ResetButton7width, ResetButton7height;
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
  String EndingImage3 = "Death Image 1.jpg";
  //
  Ending7Backgroundx = appWidth*0;
  Ending7Backgroundy = appHeight*0;
  Ending7Backgroundwidth = appWidth-1;
  Ending7Backgroundheight = appHeight-1;
  BackgroundImage4 = loadImage(imagesPath + Imagefolder + open + EndingImage3);
  //
  Ending7x = appWidth*1/5;
  Ending7y = appHeight*1/4;
  Ending7width = appWidth*3/5;
  Ending7height = appHeight*5/13;
  //
  ResetButton7x = appWidth*2/5;
  ResetButton7y = appHeight*2/3;
  ResetButton7width = appWidth*1/5;
  ResetButton7height = appHeight*2/13;
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
  rect(Ending7x, Ending7y, Ending7width, Ending7height);
  rect(Ending7Backgroundx, Ending7Backgroundy, Ending7Backgroundwidth, Ending7Backgroundheight);
  image(BackgroundImage4, Ending7Backgroundx, Ending7Backgroundy, Ending7Backgroundwidth, Ending7Backgroundheight);
  rect(ResetButton7x, ResetButton7y, ResetButton7width, ResetButton7height);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>ResetButton7x && mouseX<ResetButton7x+ResetButton7width && mouseY>ResetButton7y && mouseY<ResetButton7y+ResetButton7height) {
    hoverOverColor = Red;
    fill(hoverOverColor);
    rect(ResetButton7x, ResetButton7y, ResetButton7width, ResetButton7height);
    fill(resetDefaultInk);
  }
  //
  fill(DarkRed);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(DeathFont, size); 
  text(Ending7Text, Ending7x, Ending7y, Ending7width, Ending7height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(ButtonFont, size); 
  text(ResetButton, ResetButton7x, ResetButton7y, ResetButton7width, ResetButton7height);
  fill(resetDefaultInk);
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
