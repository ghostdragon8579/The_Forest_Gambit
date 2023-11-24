//Global Variables
int appWidth, appHeight;
int size;
String Title1 = "The Forest Gambit";
String Story1 = "You are traveling back home after the war when the path splits into three in a forest. The first going straght through the forest, the second going around the edge, and the third going out of the forest. Which path do you choose?";
String Path1 = "The First path";
String Path2 = "The Second path";
String Path3 = "The Third path";
PFont TitleFont;
PFont QuestionFont;
PFont ButtonFont;
PImage BackgroundImage;
color Red=#DE001E;
color Gray=#AFAFAF;
color Black=#000000;
color Green=#00DE01;
color DarkGreen=#02B703;
color resetDefaultInk=#FFFFFF;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectBackground2, yRectBackground2, widthRectBackground2, heightRectBackground2;
float Title1x, Title1y, Title1width, Title1height;
float Title2x, Title2y, Title2width, Title2height;
float Question1x, Question1y, Question1width, Question1height;
float Question2x, Question2y, Question2width, Question2height;
float Question3x, Question3y, Question3width, Question3height;
float Ending1x, Ending1y, Ending1width, Ending1height;
float Ending2x, Ending2y, Ending2width, Ending2height;
float Ending3x, Ending3y, Ending3width, Ending3height;
float Ending4x, Ending4y, Ending4width, Ending4height;
float Ending5x, Ending5y, Ending5width, Ending5height;
float Ending6x, Ending6y, Ending6width, Ending6height;
float Ending7x, Ending7y, Ending7width, Ending7height;
float xChoiceButton1, yChoiceButton1, widthChoiceButton1, heightChoiceButton1;
float xChoiceButton2, yChoiceButton2, widthChoiceButton2, heightChoiceButton2;
float xChoiceButton3, yChoiceButton3, widthChoiceButton3, heightChoiceButton3;
float xChoiceButton4, yChoiceButton4, widthChoiceButton4, heightChoiceButton4;
float xChoiceButton5, yChoiceButton5, widthChoiceButton5, heightChoiceButton5;
float xChoiceButton6, yChoiceButton6, widthChoiceButton6, heightChoiceButton6;
float xChoiceButton7, yChoiceButton7, widthChoiceButton7, heightChoiceButton7;
float xChoiceButton8, yChoiceButton8, widthChoiceButton8, heightChoiceButton8;
float xChoiceButton9, yChoiceButton9, widthChoiceButton9, heightChoiceButton9;
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
  BackgroundImage = loadImage(imagesPath + Imagefolder + open + ForestImage);
  //
  Question1x = appWidth*1/5;
  Question1y = appHeight*1/4;
  Question1width = appWidth*3/5;
  Question1height = appHeight*4/13;
  //
  Title1x = Question1x;
  Title1y = appHeight*1/20;
  Title1width = Question1width;
  Title1height = appHeight*2/13;
  //
  xChoiceButton1 = appWidth*1/6;
  yChoiceButton1 = appHeight*2/3;
  widthChoiceButton1 = appWidth*1/6;
  heightChoiceButton1 = appHeight*2/9;
  //
  xChoiceButton2 = appWidth*3/7-appWidth/75;
  yChoiceButton2 = yChoiceButton1;
  widthChoiceButton2 = appWidth*1/6;
  heightChoiceButton2 = heightChoiceButton1;
  //
  xChoiceButton3 = appWidth*2/3;
  yChoiceButton3 = yChoiceButton1;
  widthChoiceButton3 = appWidth*1/6;
  heightChoiceButton3 = heightChoiceButton1;
  //
  QuestionFont = createFont("Arial", 55);
  ButtonFont = createFont("Calibri", 55);
  TitleFont = createFont("Times New Roman Bold", 55);
  //
} //End setup
//
void draw() {
  //
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  image(BackgroundImage, xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  rect(Title1x, Title1y, Title1width, Title1height);
  rect(Question1x, Question1y, Question1width, Question1height);
  rect(xChoiceButton1, yChoiceButton1, widthChoiceButton1, heightChoiceButton1);
  rect(xChoiceButton2, yChoiceButton2, widthChoiceButton2, heightChoiceButton2);
  rect(xChoiceButton3, yChoiceButton3, widthChoiceButton3, heightChoiceButton3);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>xChoiceButton1 && mouseX<xChoiceButton1+widthChoiceButton1 && mouseY>yChoiceButton1 && mouseY<yChoiceButton1+heightChoiceButton1) {
    hoverOverColor = Green;
    fill(hoverOverColor);
    rect(xChoiceButton1, yChoiceButton1, widthChoiceButton1, heightChoiceButton1);
    fill(resetDefaultInk);
  } else if (mouseX>xChoiceButton2 && mouseX<xChoiceButton2+widthChoiceButton2 && mouseY>yChoiceButton2 && mouseY<yChoiceButton2+heightChoiceButton2) {
    hoverOverColor = Green;
    fill(hoverOverColor);
    rect(xChoiceButton2, yChoiceButton2, widthChoiceButton2, heightChoiceButton2);
    fill(resetDefaultInk);
  }  else if (mouseX>xChoiceButton3 && mouseX<xChoiceButton3+widthChoiceButton3 && mouseY>yChoiceButton3 && mouseY<yChoiceButton3+heightChoiceButton3) {
    hoverOverColor = Green;
    fill(hoverOverColor);
    rect(xChoiceButton3, yChoiceButton3, widthChoiceButton3, heightChoiceButton3);
    fill(resetDefaultInk);
  }
  //
  fill(DarkGreen);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(TitleFont, 60); 
  text(Title1, Title1x, Title1y, Title1width, Title1height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(QuestionFont, 25); 
  text(Story1, Question1x, Question1y, Question1width, Question1height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(ButtonFont, 35); 
  text(Path1, xChoiceButton1, yChoiceButton1, widthChoiceButton1, heightChoiceButton1);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(ButtonFont, 35); 
  text(Path2, xChoiceButton2, yChoiceButton2, widthChoiceButton2, heightChoiceButton2);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(ButtonFont, 35); 
  text(Path3, xChoiceButton3, yChoiceButton3, widthChoiceButton3, heightChoiceButton3);
  fill(resetDefaultInk);
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
