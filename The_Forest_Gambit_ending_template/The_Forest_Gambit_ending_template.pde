//Global Variables
color Black=#000000;
color DarkGreen=#02B703;
color Red=#DE001E;
color DarkRed=#AA021B;
color resetDefaultInk=#FFFFFF;
int appWidth, appHeight;
int size;
PImage BackgroundImage5;
PFont QuestionFont;
PFont ButtonFont;
PFont TitleFont;
PFont DeathFont;
String Title4 = "Congratulations You Won!";
String Ending4Text = "You flee from the wolves. You can hear them giving chase. Franticly you climb up a tree to escape them. They pace around the bottom of the tree for several hours before moving on. You make it out of the forest and make it back home safe and sound.";
String ResetButton = "Reset and try again?";
float Ending4Backgroundx, Ending4Backgroundy, Ending4Backgroundwidth, Ending4Backgroundheight;
float Ending4x, Ending4y, Ending4width, Ending4height;
float Title6x, Title6y, Title6width, Title6height;
float ResetButton4x, ResetButton4y, ResetButton4width, ResetButton4height;
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
  String EndingImage2 = "Exit Image 2.jpg";
  //
  Ending4Backgroundx = appWidth*0;
  Ending4Backgroundy = appHeight*0;
  Ending4Backgroundwidth = appWidth-1;
  Ending4Backgroundheight = appHeight-1;
  BackgroundImage5 = loadImage(imagesPath + Imagefolder + open + EndingImage2);
  //
  Ending4x = appWidth*1/5;
  Ending4y = appHeight*1/4;
  Ending4width = appWidth*3/5;
  Ending4height = appHeight*5/13;
  //
  Title6x = appWidth*1/5;
  Title6y = appHeight*1/20;
  Title6width = appWidth*3/5;
  Title6height = appHeight*2/13;
  //
  ResetButton4x = appWidth*2/5;
  ResetButton4y = appHeight*2/3;
  ResetButton4width = appWidth*1/5;
  ResetButton4height = appHeight*2/13;
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
  rect(Ending4Backgroundx, Ending4Backgroundy, Ending4Backgroundwidth, Ending4Backgroundheight);
  image(BackgroundImage5, Ending4Backgroundx, Ending4Backgroundy, Ending4Backgroundwidth, Ending4Backgroundheight);
  rect(Ending4x, Ending4y, Ending4width, Ending4height);
  rect(Title6x, Title6y, Title6width, Title6height);
  rect(ResetButton4x, ResetButton4y, ResetButton4width, ResetButton4height);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>ResetButton4x && mouseX<ResetButton4x+ResetButton4width && mouseY>ResetButton4y && mouseY<ResetButton4y+ResetButton4height) {
    hoverOverColor = Red;
    fill(hoverOverColor);
    rect(ResetButton4x, ResetButton4y, ResetButton4width, ResetButton4height);
    fill(resetDefaultInk);
  }
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(QuestionFont, size); 
  text(Ending4Text, Ending4x, Ending4y, Ending4width, Ending4height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(ButtonFont, size); 
  text(ResetButton, ResetButton4x, ResetButton4y, ResetButton4width, ResetButton4height);
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
