//Global Variables
int appWidth, appHeight;
int size;
String ResetButton = "Reset and try again?";
String Title1 = "The Forest Gambit";
String Title2 = "Wolf Encounter";
String Title3 = "Bandit Encounter";
String Title4 = "Congratulations You Won!";
String Story1 = "You are traveling back home after the war when the path splits into three in a forest. The first going straght through the forest, the second going around the edge, and the third going out of the forest. Which path do you choose?";
String Story2 = "As you are walking along the path you hear howling in the distance. Wolves are on the hunt and are closing in on your location fast. What do you do?";
String Story3 = "As you are walking along the path you see people running among the trees. Then a large man with a club steps out of the trees in front of you. He says to you give us your money and you may pass. What do you do?";
String Ending1Text = "You decided that the forest wasn't safe and decided to leave. You make it back home safe and sound.";
String Ending2Text = "You accept the bandit's terms and pay them money for safe passsage. They are true to their words and let you pass without a fight. You reach the edge of the forest and make it back home safe and sound.";
String Ending3Text = "You Died";
String Path1 = "The First path";
String Path2 = "The Second path";
String Path3 = "The Third path";
String Fight = "Fight!";
String Flee = "Flee!";
String Hide = "Hide!";
String Parlay = "Parlay!";
PFont TitleFont;
PFont QuestionFont;
PFont ButtonFont;
PFont DeathFont;
PImage BackgroundImage;
PImage BackgroundImage2;
PImage BackgroundImage3;
PImage BackgroundImage4;
PImage WolfPicture;
PImage WolfFace;
PImage BanditImage2;
PImage CloakandDagger;
color Red=#DE001E;
color DarkRed=#AA021B;
color Gray=#AFAFAF;
color Black=#000000;
color Green=#00DE01;
color DarkGreen=#02B703;
color resetDefaultInk=#FFFFFF;
float ResetButton1x, ResetButton1y, ResetButton1width, ResetButton1height;
float ResetButton2x, ResetButton2y, ResetButton2width, ResetButton2height;
float ResetButton3x, ResetButton3y, ResetButton3width, ResetButton3height;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground;
float xRectBackground2, yRectBackground2, widthRectBackground2, heightRectBackground2;
float xRectBackground3, yRectBackground3, widthRectBackground3, heightRectBackground3;
float Ending1Backgroundx, Ending1Backgroundy, Ending1Backgroundwidth, Ending1Backgroundheight;
float Ending2Backgroundx, Ending2Backgroundy, Ending2Backgroundwidth, Ending2Backgroundheight;
float Ending3Backgroundx, Ending3Backgroundy, Ending3Backgroundwidth, Ending3Backgroundheight;
float Title1x, Title1y, Title1width, Title1height;
float Title2x, Title2y, Title2width, Title2height;
float Title3x, Title3y, Title3width, Title3height;
float Title4x, Title4y, Title4width, Title4height;
float Title5x, Title5y, Title5width, Title5height;
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
Boolean StoryEnding2=false;
Boolean StoryEnding3=false;
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
  String ForestImage2 = "Forest_Exit_Ending.jpg";
  String WolfImage = "Wolf Image.jpg";
  String WolfImage2 = "Spirit Wolf Face.jpg";
  String BanditImage = "Thieves Forest.jpg";
  String DaggerImage = "Cloak and Dagger.jpg";
  String EndingImage1 = "Exit Image 1.jpg";
  String EndingImage2 = "Death Image 1.jpg";
  BackgroundImage = loadImage(imagesPath + Imagefolder + open + ForestImage);
  BackgroundImage2 = loadImage(imagesPath + Imagefolder + open + ForestImage2);
  BackgroundImage3 = loadImage(imagesPath + Imagefolder + open + EndingImage1);
  BackgroundImage4 = loadImage(imagesPath + Imagefolder + open + EndingImage2);
  WolfPicture = loadImage(imagesPath + Imagefolder + open + WolfImage);
  WolfFace = loadImage(imagesPath + Imagefolder + open + WolfImage2);
  BanditImage2 = loadImage(imagesPath + Imagefolder + open + BanditImage);
  CloakandDagger = loadImage(imagesPath + Imagefolder + open + DaggerImage);
  //
  xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
  //
  xRectBackground2 = appWidth*0;
  yRectBackground2 = appHeight*0;
  widthRectBackground2 = appWidth-1;
  heightRectBackground2 = appHeight-1;
  //
  xRectBackground3 = appWidth*0;
  yRectBackground3 = appHeight*0;
  widthRectBackground3 = appWidth-1;
  heightRectBackground3 = appHeight-1;
  //
  Ending1Backgroundx = appWidth*0;
  Ending1Backgroundy = appHeight*0;
  Ending1Backgroundwidth = appWidth-1;
  Ending1Backgroundheight = appHeight-1;
  //
  Ending2Backgroundx = appWidth*0;
  Ending2Backgroundy = appHeight*0;
  Ending2Backgroundwidth = appWidth-1;
  Ending2Backgroundheight = appHeight-1;
  //
  Ending3Backgroundx = appWidth*0;
  Ending3Backgroundy = appHeight*0;
  Ending3Backgroundwidth = appWidth-1;
  Ending3Backgroundheight = appHeight-1;
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
  Question3x = appWidth*1/5;
  Question3y = appHeight*1/4;
  Question3width = appWidth*3/5;
  Question3height = appHeight*4/13;
  //
  Ending1x = appWidth*1/5;
  Ending1y = appHeight*1/4;
  Ending1width = appWidth*3/5;
  Ending1height = appHeight*5/13;
  //
  Ending2x = appWidth*1/5;
  Ending2y = appHeight*1/4;
  Ending2width = appWidth*3/5;
  Ending2height = appHeight*5/13;
  //
  Ending3x = appWidth*1/5;
  Ending3y = appHeight*1/4;
  Ending3width = appWidth*3/5;
  Ending3height = appHeight*5/13;
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
  Title3x = Question3x;
  Title3y = appHeight*1/20;
  Title3width = Question3width;
  Title3height = appHeight*2/13;
  //
  Title4x = appWidth*1/5;
  Title4y = appHeight*1/20;
  Title4width = appWidth*3/5;
  Title4height = appHeight*2/13;
  //
  Title5x = appWidth*1/5;
  Title5y = appHeight*1/20;
  Title5width = appWidth*3/5;
  Title5height = appHeight*2/13;
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
  ResetButton1x = appWidth*2/5;
  ResetButton1y = appHeight*2/3;
  ResetButton1width = appWidth*1/5;
  ResetButton1height = appHeight*2/13;
  //
  ResetButton2x = appWidth*2/5;
  ResetButton2y = appHeight*2/3;
  ResetButton2width = appWidth*1/5;
  ResetButton2height = appHeight*2/13;
  //
  ResetButton3x = appWidth*2/5;
  ResetButton3y = appHeight*2/3;
  ResetButton3width = appWidth*1/5;
  ResetButton3height = appHeight*2/13;
  //
  QuestionFont = createFont("Arial", 55);
  ButtonFont = createFont("Calibri", 55);
  DeathFont = createFont("Papyrus", 55);
  TitleFont = createFont("Times New Roman Bold", 55);
  //
} //End setup
//
void draw() {
  //
  if (StoryEnding1==true && StoryEnding2==false && StoryEnding3==false && StoryWolfEncounter==false && StoryBanditEcounter==false) LeftTheForest ();
  if (StoryEnding1==false && StoryEnding2==false && StoryEnding3==false && StoryWolfEncounter==true && StoryBanditEcounter==false) WolfEncounter ();
  if (StoryEnding1==false && StoryEnding2==false && StoryEnding3==false && StoryWolfEncounter==false && StoryBanditEcounter==true) BanditEncounter ();
  if (StoryEnding1==false && StoryEnding2==true && StoryEnding3==false && StoryWolfEncounter==false && StoryBanditEcounter==true) BanditParlay ();
  if (StoryEnding1==false && StoryEnding2==false && StoryEnding3==true && StoryWolfEncounter==false && StoryBanditEcounter==true) BanditFight ();
  if (StoryEnding1==false && StoryEnding2==false && StoryEnding3==false && StoryWolfEncounter==false && StoryBanditEcounter==false) EnteringTheForest ();
  //
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {
  //
  if (mouseX>xChoiceButton1 && mouseX<xChoiceButton1+widthChoiceButton1 && mouseY>yChoiceButton1 && mouseY<yChoiceButton1+heightChoiceButton1 && StoryEnding1==false && StoryWolfEncounter==false && StoryBanditEcounter==false) StoryWolfEncounter=true;
  if (mouseX>xChoiceButton2 && mouseX<xChoiceButton2+widthChoiceButton2 && mouseY>yChoiceButton2 && mouseY<yChoiceButton2+heightChoiceButton2 && StoryEnding1==false && StoryWolfEncounter==false && StoryBanditEcounter==false) StoryBanditEcounter=true;
  if (mouseX>xChoiceButton3 && mouseX<xChoiceButton3+widthChoiceButton3 && mouseY>yChoiceButton3 && mouseY<yChoiceButton3+heightChoiceButton3 && StoryEnding1==false && StoryWolfEncounter==false && StoryBanditEcounter==false) StoryEnding1=true;
  if (mouseX>xChoiceButton7 && mouseX<xChoiceButton7+widthChoiceButton7 && mouseY>yChoiceButton7 && mouseY<yChoiceButton7+heightChoiceButton7 && StoryEnding1==false && StoryWolfEncounter==false && StoryBanditEcounter==true) StoryEnding3=true;
  if (mouseX>xChoiceButton9 && mouseX<xChoiceButton9+widthChoiceButton9 && mouseY>yChoiceButton9 && mouseY<yChoiceButton9+heightChoiceButton9 && StoryEnding1==false && StoryWolfEncounter==false && StoryBanditEcounter==true) StoryEnding2=true;
  if (mouseX>ResetButton1x && mouseX<ResetButton1x+ResetButton1width && mouseY>ResetButton1y && mouseY<ResetButton1y+ResetButton1height && StoryEnding1==true) {
  StoryEnding1=false;
  }
  if (mouseX>ResetButton2x && mouseX<ResetButton2x+ResetButton2width && mouseY>ResetButton2y && mouseY<ResetButton2y+ResetButton2height && StoryEnding2==true) {
  StoryEnding2=false;
  StoryBanditEcounter=false;
  }
  if (mouseX>ResetButton3x && mouseX<ResetButton3x+ResetButton3width && mouseY>ResetButton3y && mouseY<ResetButton3y+ResetButton3height && StoryEnding3==true) {
  StoryEnding3=false;
  StoryBanditEcounter=false;
  }
  //
} //End mousePressed
//
//End MAIN Program
