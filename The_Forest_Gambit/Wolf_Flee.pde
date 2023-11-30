void WolfFlee () {
  //
  rect(Ending4Backgroundx, Ending4Backgroundy, Ending4Backgroundwidth, Ending4Backgroundheight);
  image(BackgroundImage5, Ending4Backgroundx, Ending4Backgroundy, Ending4Backgroundwidth, Ending4Backgroundheight);
  rect(Ending4x, Ending4y, Ending4width, Ending4height);
  rect(Title6x, Title6y, Title6width, Title6height);
  rect(ResetButton4x, ResetButton4y, ResetButton4width, ResetButton4height);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>ResetButton4x && mouseX<ResetButton4x+ResetButton4width && mouseY>ResetButton4y && mouseY<ResetButton4y+ResetButton4height) {
    hoverOverColor = Red;
    fill(hoverOverColor);
    rect(ResetButton4x, ResetButton4y, ResetButton4width, ResetButton4height);
    fill(resetDefaultInk);
  }
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(QuestionFont, size); 
  text(Ending4Text, Ending4x, Ending4y, Ending4width, Ending4height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(ButtonFont, size); 
  text(ResetButton, ResetButton4x, ResetButton4y, ResetButton4width, ResetButton4height);
  fill(resetDefaultInk);
  //
  fill(DarkGreen);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(TitleFont, size); 
  text(Title4, Title6x, Title6y, Title6width, Title6height);
  fill(resetDefaultInk);
  //
}
