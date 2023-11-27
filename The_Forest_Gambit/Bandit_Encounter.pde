void BanditEncounter () {
//
  rect(xRectBackground3, yRectBackground3, widthRectBackground3, heightRectBackground3);
  image(BanditImage2, xRectBackground3, yRectBackground3, widthRectBackground3, heightRectBackground3);
  rect(Title3x, Title3y, Title3width, Title3height);
  rect(Question3x, Question3y, Question3width, Question3height);
  rect(xChoiceButton7, yChoiceButton7, widthChoiceButton7, heightChoiceButton7);
  rect(xChoiceButton8, yChoiceButton8, widthChoiceButton8, heightChoiceButton8);
  rect(xChoiceButton9, yChoiceButton9, widthChoiceButton9, heightChoiceButton9);
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
  if (mouseX>xChoiceButton7 && mouseX<xChoiceButton7+widthChoiceButton7 && mouseY>yChoiceButton7 && mouseY<yChoiceButton7+heightChoiceButton7) {
    image(CloakandDagger, xChoiceButton7, yChoiceButton7, widthChoiceButton7, heightChoiceButton7);
  } else if (mouseX>xChoiceButton8 && mouseX<xChoiceButton8+widthChoiceButton8 && mouseY>yChoiceButton8 && mouseY<yChoiceButton8+heightChoiceButton8) {
    image(CloakandDagger, xChoiceButton8, yChoiceButton8, widthChoiceButton8, heightChoiceButton8);
  }  else if (mouseX>xChoiceButton9 && mouseX<xChoiceButton9+widthChoiceButton9 && mouseY>yChoiceButton9 && mouseY<yChoiceButton9+heightChoiceButton9) {
    image(CloakandDagger, xChoiceButton9, yChoiceButton9, widthChoiceButton9, heightChoiceButton9);
  }
  //
}
