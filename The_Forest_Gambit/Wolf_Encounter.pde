void WolfEncounter () {
  //
  rect(xRectBackground2, yRectBackground2, widthRectBackground2, heightRectBackground2);
  image(WolfPicture, xRectBackground2, yRectBackground2, widthRectBackground2, heightRectBackground2);
  rect(Title2x, Title2y, Title2width, Title2height);
  rect(Question2x, Question2y, Question2width, Question2height);
  rect(xChoiceButton4, yChoiceButton4, widthChoiceButton4, heightChoiceButton4);
  rect(xChoiceButton5, yChoiceButton5, widthChoiceButton5, heightChoiceButton5);
  rect(xChoiceButton6, yChoiceButton6, widthChoiceButton6, heightChoiceButton6);
  //
  if (mouseX>xChoiceButton4 && mouseX<xChoiceButton4+widthChoiceButton4 && mouseY>yChoiceButton4 && mouseY<yChoiceButton4+heightChoiceButton4) {
    image(WolfFace, xChoiceButton4, yChoiceButton4, widthChoiceButton4, heightChoiceButton4);
  } else if (mouseX>xChoiceButton5 && mouseX<xChoiceButton5+widthChoiceButton5 && mouseY>yChoiceButton5 && mouseY<yChoiceButton5+heightChoiceButton5) {
    image(WolfFace, xChoiceButton5, yChoiceButton5, widthChoiceButton5, heightChoiceButton5);
  }  else if (mouseX>xChoiceButton6 && mouseX<xChoiceButton6+widthChoiceButton6 && mouseY>yChoiceButton6 && mouseY<yChoiceButton6+heightChoiceButton6) {
    image(WolfFace, xChoiceButton6, yChoiceButton6, widthChoiceButton6, heightChoiceButton6);
  }
  //
  fill(DarkGreen);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(TitleFont, 60); 
  text(Title2, Title2x, Title2y, Title2width, Title2height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(QuestionFont, 25); 
  text(Story2, Question2x, Question2y, Question2width, Question2height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(ButtonFont, 50); 
  text(Fight, xChoiceButton4, yChoiceButton4, widthChoiceButton4, heightChoiceButton4);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(ButtonFont, 50); 
  text(Flee, xChoiceButton5, yChoiceButton5, widthChoiceButton5, heightChoiceButton5);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(ButtonFont, 50); 
  text(Hide, xChoiceButton6, yChoiceButton6, widthChoiceButton6, heightChoiceButton6);
  fill(resetDefaultInk);
  //
}
