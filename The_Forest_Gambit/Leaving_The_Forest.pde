void LeftTheForest () {
  //
  rect(Ending1Backgroundx, Ending1Backgroundy, Ending1Backgroundwidth, Ending1Backgroundheight);
  image(BackgroundImage2, Ending1Backgroundx, Ending1Backgroundy, Ending1Backgroundwidth, Ending1Backgroundheight);
  rect(Ending1x, Ending1y, Ending1width, Ending1height);
  rect(Title4x, Title4y, Title4width, Title4height);
  rect(ResetButton1x, ResetButton1y, ResetButton1width, ResetButton1height);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>ResetButton1x && mouseX<ResetButton1x+ResetButton1width && mouseY>ResetButton1y && mouseY<ResetButton1y+ResetButton1height) {
    hoverOverColor = Red;
    fill(hoverOverColor);
    rect(ResetButton1x, ResetButton1y, ResetButton1width, ResetButton1height);
    fill(resetDefaultInk);
  }
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(QuestionFont, 40); 
  text(Ending1Text, Ending1x, Ending1y, Ending1width, Ending1height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(ButtonFont, 30); 
  text(ResetButton1, ResetButton1x, ResetButton1y, ResetButton1width, ResetButton1height);
  fill(resetDefaultInk);
  //
  fill(DarkGreen);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(TitleFont, 50); 
  text(Title4, Title4x, Title4y, Title4width, Title4height);
  fill(resetDefaultInk);
  //
}
