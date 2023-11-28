//Global Variables
color Black=#000000;
color DarkGreen=#02B703;
color Red=#DE001E;
color resetDefaultInk=#FFFFFF;
int appWidth, appHeight;
int size;
PImage BackgroundImage3;
PFont QuestionFont;
PFont ButtonFont;
PFont TitleFont;
String Title4 = "Congratulations You Won!";
String Ending2Text = "You accept the bandit's terms and pay them money for safe passsage. They are true to their words and let you pass without a fight. You reach the edge of the forest and make it back home safe and sound.";
String ResetButton = "Reset and try again?";
float Ending2Backgroundx, Ending2Backgroundy, Ending2Backgroundwidth, Ending2Backgroundheight;
float Ending2x, Ending2y, Ending2width, Ending2height;
float Title5x, Title5y, Title5width, Title5height;
float ResetButton2x, ResetButton2y, ResetButton2width, ResetButton2height;
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
  String EndingImage1 = "Exit Image 1.jpg";
  //
  Ending2Backgroundx = appWidth*0;
  Ending2Backgroundy = appHeight*0;
  Ending2Backgroundwidth = appWidth-1;
  Ending2Backgroundheight = appHeight-1;
  BackgroundImage3 = loadImage(imagesPath + Imagefolder + open + EndingImage1);
  //
  Ending2x = appWidth*1/5;
  Ending2y = appHeight*1/4;
  Ending2width = appWidth*3/5;
  Ending2height = appHeight*5/13;
  //
  Title5x = appWidth*1/5;
  Title5y = appHeight*1/20;
  Title5width = appWidth*3/5;
  Title5height = appHeight*2/13;
  //
  ResetButton2x = appWidth*2/5;
  ResetButton2y = appHeight*2/3;
  ResetButton2width = appWidth*1/5;
  ResetButton2height = appHeight*2/13;
  //
  QuestionFont = createFont("Arial", 55);
  ButtonFont = createFont("Calibri", 55);
  TitleFont = createFont("Times New Roman Bold", 55);
  //
} //End setup
//
void draw() {
  //
  rect(Ending2Backgroundx, Ending2Backgroundy, Ending2Backgroundwidth, Ending2Backgroundheight);
  image(BackgroundImage3, Ending2Backgroundx, Ending2Backgroundy, Ending2Backgroundwidth, Ending2Backgroundheight);
  rect(Ending2x, Ending2y, Ending2width, Ending2height);
  rect(Title5x, Title5y, Title5width, Title5height);
  rect(ResetButton2x, ResetButton2y, ResetButton2width, ResetButton2height);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>ResetButton2x && mouseX<ResetButton2x+ResetButton2width && mouseY>ResetButton2y && mouseY<ResetButton2y+ResetButton2height) {
    hoverOverColor = Red;
    fill(hoverOverColor);
    rect(ResetButton2x, ResetButton2y, ResetButton2width, ResetButton2height);
    fill(resetDefaultInk);
  }
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(QuestionFont, size); 
  text(Ending2Text, Ending2x, Ending2y, Ending2width, Ending2height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(ButtonFont, size); 
  text(ResetButton, ResetButton2x, ResetButton2y, ResetButton2width, ResetButton2height);
  fill(resetDefaultInk);
  //
  fill(DarkGreen);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(TitleFont, size); 
  text(Title4, Title5x, Title5y, Title5width, Title5height);
  fill(resetDefaultInk);
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
