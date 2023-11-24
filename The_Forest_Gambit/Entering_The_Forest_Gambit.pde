void EnteringTheForest () {
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
}
