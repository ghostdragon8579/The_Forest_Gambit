//Global Variables
int size;
int appWidth, appHeight;
PFont TitleFont;
PFont QuestionFont;
PFont ButtonFont;
color Red=#DE001E;
color Gray=#AFAFAF;
color Black=#000000;
color Green=#00DE01;
color DarkGreen=#02B703;
color resetDefaultInk=#FFFFFF;
float xRectBackground2, yRectBackground2, widthRectBackground2, heightRectBackground2;
float Question2x, Question2y, Question2width, Question2height;
float Title2x, Title2y, Title2width, Title2height;
float xChoiceButton4, yChoiceButton4, widthChoiceButton4, heightChoiceButton4;
float xChoiceButton5, yChoiceButton5, widthChoiceButton5, heightChoiceButton5;
float xChoiceButton6, yChoiceButton6, widthChoiceButton6, heightChoiceButton6;
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
  xRectBackground2 = appWidth*0;
  yRectBackground2 = appHeight*0;
  widthRectBackground2 = appWidth-1;
  heightRectBackground2 = appHeight-1;
  //
  Question2x = appWidth*1/5;
  Question2y = appHeight*1/4;
  Question2width = appWidth*3/5;
  Question2height = appHeight*4/13;
  //
  Title2x = Question2x;
  Title2y = appHeight*1/20;
  Title2width = Question2width;
  Title2height = appHeight*2/13;
  //
  xChoiceButton4 = appWidth*1/6;
  yChoiceButton4 = appHeight*2/3;
  widthChoiceButton4 = appWidth*1/6;
  heightChoiceButton4 = appHeight*2/9;
  //
  xChoiceButton5 = appWidth*3/7-appWidth/75;
  yChoiceButton5 = yChoiceButton4;
  widthChoiceButton5 = appWidth*1/6;
  heightChoiceButton5 = heightChoiceButton4;
  //
  xChoiceButton6 = appWidth*2/3;
  yChoiceButton6 = yChoiceButton4;
  widthChoiceButton6 = appWidth*1/6;
  heightChoiceButton6 = heightChoiceButton4;
  //
} //End setup
//
void draw() {
  //
  rect(xRectBackground2, yRectBackground2, widthRectBackground2, heightRectBackground2);
  rect(Title2x, Title2y, Title2width, Title2height);
  rect(Question2x, Question2y, Question2width, Question2height);
  rect(xChoiceButton4, yChoiceButton4, widthChoiceButton4, heightChoiceButton4);
  rect(xChoiceButton5, yChoiceButton5, widthChoiceButton5, heightChoiceButton5);
  rect(xChoiceButton6, yChoiceButton6, widthChoiceButton6, heightChoiceButton6);
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
