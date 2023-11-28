void BanditParlay () {
  //
  rect(Ending2Backgroundx, Ending2Backgroundy, Ending2Backgroundwidth, Ending2Backgroundheight);
  image(BackgroundImage3, Ending2Backgroundx, Ending2Backgroundy, Ending2Backgroundwidth, Ending2Backgroundheight);
  rect(Ending2x, Ending2y, Ending2width, Ending2height);
  rect(Title5x, Title5y, Title5width, Title5height);
  rect(ResetButton2x, ResetButton2y, ResetButton2width, ResetButton2height);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>ResetButton2x && mouseX<ResetButton2x+ResetButton2width && mouseY>ResetButton2y && mouseY<ResetButton2y+ResetButton2height) {
    hoverOverColor = Red;
    fill(hoverOverColor);
    rect(ResetButton2x, ResetButton2y, ResetButton2width, ResetButton2height);
    fill(resetDefaultInk);
  }
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(QuestionFont, size); 
  text(Ending2Text, Ending2x, Ending2y, Ending2width, Ending2height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(ButtonFont, size); 
  text(ResetButton, ResetButton2x, ResetButton2y, ResetButton2width, ResetButton2height);
  fill(resetDefaultInk);
  //
  fill(DarkGreen);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(TitleFont, size); 
  text(Title4, Title5x, Title5y, Title5width, Title5height);
  fill(resetDefaultInk);
  //
}
