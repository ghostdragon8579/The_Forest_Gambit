//Global Variables
int size;
int appWidth, appHeight;
PImage BanditImage2;
String Title3 = "Bandit Encounter";
String Story3 = "As you are walking along the path you see people running among the trees. Then a large man with a club steps out of the trees in front of you. He says to you give us you money and you may pass. What do you do?";
String Fight = "Fight!";
String Flee = "Flee!";
String Parlay = "Parlay!";
PFont TitleFont;
PFont QuestionFont;
PFont ButtonFont;
color Gray=#AFAFAF;
color Black=#000000;
color Green=#00DE01;
color DarkGreen=#02B703;
color resetDefaultInk=#FFFFFF;
float xRectBackground3, yRectBackground3, widthRectBackground3, heightRectBackground3;
float Question3x, Question3y, Question3width, Question3height;
float Title3x, Title3y, Title3width, Title3height;
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
  String BanditImage = "Thieves Forest.jpg";
  //
  xRectBackground3 = appWidth*0;
  yRectBackground3 = appHeight*0;
  widthRectBackground3 = appWidth-1;
  heightRectBackground3 = appHeight-1;
  BanditImage2 = loadImage(imagesPath + Imagefolder + open + BanditImage);
  //
  Question3x = appWidth*1/5;
  Question3y = appHeight*1/4;
  Question3width = appWidth*3/5;
  Question3height = appHeight*4/13;
  //
  Title3x = Question3x;
  Title3y = appHeight*1/20;
  Title3width = Question3width;
  Title3height = appHeight*2/13;
  //
  xChoiceButton7 = appWidth*1/6;
  yChoiceButton7 = appHeight*2/3;
  widthChoiceButton7 = appWidth*1/6;
  heightChoiceButton7 = appHeight*2/9;
  //
  xChoiceButton8 = appWidth*3/7-appWidth/75;
  yChoiceButton8 = yChoiceButton7;
  widthChoiceButton8 = appWidth*1/6;
  heightChoiceButton8 = heightChoiceButton7;
  //
  xChoiceButton9 = appWidth*2/3;
  yChoiceButton9 = yChoiceButton7;
  widthChoiceButton9 = appWidth*1/6;
  heightChoiceButton9 = heightChoiceButton7;
  //
  QuestionFont = createFont("Arial", 55);
  ButtonFont = createFont("Calibri", 55);
  TitleFont = createFont("Times New Roman Bold", 55);
  //
} //End setup
//
void draw() {
  //
  rect(xRectBackground3, yRectBackground3, widthRectBackground3, heightRectBackground3);
  image(BanditImage2, xRectBackground3, yRectBackground3, widthRectBackground3, heightRectBackground3);
  rect(Title3x, Title3y, Title3width, Title3height);
  rect(Question3x, Question3y, Question3width, Question3height);
  rect(xChoiceButton7, yChoiceButton7, widthChoiceButton7, heightChoiceButton7);
  rect(xChoiceButton8, yChoiceButton8, widthChoiceButton8, heightChoiceButton8);
  rect(xChoiceButton9, yChoiceButton9, widthChoiceButton9, heightChoiceButton9);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>xChoiceButton7 && mouseX<xChoiceButton7+widthChoiceButton7 && mouseY>yChoiceButton7 && mouseY<yChoiceButton7+heightChoiceButton7) {
    hoverOverColor = Green;
    fill(hoverOverColor);
    rect(xChoiceButton7, yChoiceButton7, widthChoiceButton7, heightChoiceButton7);
    fill(resetDefaultInk);
  } else if (mouseX>xChoiceButton8 && mouseX<xChoiceButton8+widthChoiceButton8 && mouseY>yChoiceButton8 && mouseY<yChoiceButton8+heightChoiceButton8) {
    hoverOverColor = Green;
    fill(hoverOverColor);
    rect(xChoiceButton8, yChoiceButton8, widthChoiceButton8, heightChoiceButton8);
    fill(resetDefaultInk);
  }  else if (mouseX>xChoiceButton9 && mouseX<xChoiceButton9+widthChoiceButton9 && mouseY>yChoiceButton9 && mouseY<yChoiceButton9+heightChoiceButton9) {
    hoverOverColor = Green;
    fill(hoverOverColor);
    rect(xChoiceButton9, yChoiceButton9, widthChoiceButton9, heightChoiceButton9);
    fill(resetDefaultInk);
  }
  //
  fill(DarkGreen);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(TitleFont, 60); 
  text(Title3, Title3x, Title3y, Title3width, Title3height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(QuestionFont, 25); 
  text(Story3, Question3x, Question3y, Question3width, Question3height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(ButtonFont, 50); 
  text(Fight, xChoiceButton7, yChoiceButton7, widthChoiceButton7, heightChoiceButton7);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(ButtonFont, 50); 
  text(Flee, xChoiceButton8, yChoiceButton8, widthChoiceButton8, heightChoiceButton8);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(ButtonFont, 50); 
  text(Parlay, xChoiceButton9, yChoiceButton9, widthChoiceButton9, heightChoiceButton9);
  fill(resetDefaultInk);
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
//End MAIN Program
