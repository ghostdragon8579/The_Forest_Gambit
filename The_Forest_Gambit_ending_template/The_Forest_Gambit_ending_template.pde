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
String Ending5Text = "You attempt to flee and get shot in the back with a crosbow bolt. You Died";
String ResetButton = "Reset and try again?";
float Ending5Backgroundx, Ending5Backgroundy, Ending5Backgroundwidth, Ending5Backgroundheight;
float Ending5x, Ending5y, Ending5width, Ending5height;
float Title6x, Title6y, Title6width, Title6height;
float ResetButton5x, ResetButton5y, ResetButton5width, ResetButton5height;
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
  String imagesPath = up + open + up + open;
  String Imagefolder = "Images";
  String EndingImage3 = "Death Image 1.jpg";
  //
  Ending5Backgroundx = appWidth*0;
  Ending5Backgroundy = appHeight*0;
  Ending5Backgroundwidth = appWidth-1;
  Ending5Backgroundheight = appHeight-1;
  BackgroundImage4 = loadImage(imagesPath + Imagefolder + open + EndingImage3);
  //
  Ending5x = appWidth*1/5;
  Ending5y = appHeight*1/4;
  Ending5width = appWidth*3/5;
  Ending5height = appHeight*5/13;
  //
  Title6x = appWidth*1/5;
  Title6y = appHeight*1/20;
  Title6width = appWidth*3/5;
  Title6height = appHeight*2/13;
  //
  ResetButton5x = appWidth*2/5;
  ResetButton5y = appHeight*2/3;
  ResetButton5width = appWidth*1/5;
  ResetButton5height = appHeight*2/13;
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
  rect(Title6x, Title6y, Title6width, Title6height);
  rect(Ending5x, Ending5y, Ending5width, Ending5height);
  rect(Ending5Backgroundx, Ending5Backgroundy, Ending5Backgroundwidth, Ending5Backgroundheight);
  image(BackgroundImage4, Ending5Backgroundx, Ending5Backgroundy, Ending5Backgroundwidth, Ending5Backgroundheight);
  rect(ResetButton5x, ResetButton5y, ResetButton5width, ResetButton5height);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>ResetButton5x && mouseX<ResetButton5x+ResetButton5width && mouseY>ResetButton5y && mouseY<ResetButton5y+ResetButton5height) {
    hoverOverColor = Red;
    fill(hoverOverColor);
    rect(ResetButton5x, ResetButton5y, ResetButton5width, ResetButton5height);
    fill(resetDefaultInk);
  }
  //
  fill(DarkRed);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(DeathFont, size); 
  text(Ending5Text, Ending5x, Ending5y, Ending5width, Ending5height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(ButtonFont, size); 
  text(ResetButton, ResetButton5x, ResetButton5y, ResetButton5width, ResetButton5height);
  fill(resetDefaultInk);
  /*
  fill(DarkGreen);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(TitleFont, size); 
  text(Title4, Title6x, Title6y, Title6width, Title6height);
  fill(resetDefaultInk);
  */
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
