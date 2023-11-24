//Global Variables
int appWidth, appHeight;
int size;
String Title1 = "The Forest Gambit";
String Title2 = "Wolf Encounter";
String Story1 = "You are traveling back home after the war when the path splits into three in a forest. The first going straght through the forest, the second going around the edge, and the third going out of the forest. Which path do you choose?";
String Story2 = "As you are walking along the path you hear howling in the distance. Wolves are on the hunt and you are their pray. What do you do?";
String Path1 = "The First path";
String Path2 = "The Second path";
String Path3 = "The Third path";
String Fight = "Fight!";
String Flee = "Flee!";
String Hide = "Hide!";
PFont TitleFont;
PFont QuestionFont;
PFont ButtonFont;
PImage BackgroundImage;
PImage WolfImage2;
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
float Title3x, Title3y, Title3width, Title3height;
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
Boolean StoryEnding1=false;
Boolean StoryWolfEncounter=false;
Boolean StoryBanditEcounter=false;
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
  String WolfImage = "Wolf Image.jpg";
  //
  xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
  BackgroundImage = loadImage(imagesPath + Imagefolder + open + ForestImage);
  //
  xRectBackground2 = appWidth*0;
  yRectBackground2 = appHeight*0;
  widthRectBackground2 = appWidth-1;
  heightRectBackground2 = appHeight-1;
  WolfImage2 = loadImage(imagesPath + Imagefolder + open + WolfImage);
  //
  Question1x = appWidth*1/5;
  Question1y = appHeight*1/4;
  Question1width = appWidth*3/5;
  Question1height = appHeight*4/13;
  //
  Question2x = appWidth*1/5;
  Question2y = appHeight*1/4;
  Question2width = appWidth*3/5;
  Question2height = appHeight*4/13;
  //
  Title1x = Question1x;
  Title1y = appHeight*1/20;
  Title1width = Question1width;
  Title1height = appHeight*2/13;
  //
  Title2x = Question2x;
  Title2y = appHeight*1/20;
  Title2width = Question2width;
  Title2height = appHeight*2/13;
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
  QuestionFont = createFont("Arial", 55);
  ButtonFont = createFont("Calibri", 55);
  TitleFont = createFont("Times New Roman Bold", 55);
  //
} //End setup
//
void draw() {
  //
  if (StoryEnding1==false && StoryWolfEncounter==false && StoryBanditEcounter==false) EnteringTheForest ();
  if (StoryEnding1==false && StoryWolfEncounter==true && StoryBanditEcounter==false) WolfEncounter ();
  //if (StoryEnding1==false && StoryWolfEncounter==false && StoryBanditEcounter==true) BanditEncounter ();
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {
  //
  if (mouseX>xChoiceButton1 && mouseX<xChoiceButton1+widthChoiceButton1 && mouseY>yChoiceButton1 && mouseY<yChoiceButton1+heightChoiceButton1) StoryWolfEncounter=true;
  if (mouseX>xChoiceButton2 && mouseX<xChoiceButton2+widthChoiceButton2 && mouseY>yChoiceButton2 && mouseY<yChoiceButton2+heightChoiceButton2) StoryBanditEcounter=true;
  //
} //End mousePressed
//
//End MAIN Program
