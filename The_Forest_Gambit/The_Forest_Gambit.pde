//Global Variables
PFont QuestionFont;
PFont ButtonFont;
color Gray=#AFAFAF;
color Black=#000000;
color Green=#00DE01;
color resetDefaultInk=#FFFFFF;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float Question1x, Question1y, Question1width, Question1height;
float Question2x, Question2y, Question2width, Question2height;
float Question3x, Question3y, Question3width, Question3height;
float Question4x, Question4y, Question4width, Question4height;
float Question5x, Question5y, Question5width, Question5height;
float Question6x, Question6y, Question6width, Question6height;
float Question7x, Question7y, Question7width, Question7height;
float Question8x, Question8y, Question8width, Question8height;
float Question9x, Question9y, Question9width, Question9height;
float Question10x, Question10y, Question10width, Question10height;
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
  int appWidth = width;
  int appHeight = height;
  //
  xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
  //
  Question1x = appWidth*1/5;
  Question1y = appHeight*1/4;
  Question1width = appWidth*3/5;
  Question1height = appHeight*4/13;
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
  //
} //End setup
//
void draw() {
  //
  fill(Gray);
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  fill(resetDefaultInk);
  rect(Question1x, Question1y, Question1width, Question1height);
  rect(xChoiceButton1, yChoiceButton1, widthChoiceButton1, heightChoiceButton1);
  rect(xChoiceButton2, yChoiceButton2, widthChoiceButton2, heightChoiceButton2);
  rect(xChoiceButton3, yChoiceButton3, widthChoiceButton3, heightChoiceButton3);
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
