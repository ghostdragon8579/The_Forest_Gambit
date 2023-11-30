void BanditFight () {
  //
  rect(Ending3x, Ending3y, Ending3width, Ending3height);
  rect(Ending3Backgroundx, Ending3Backgroundy, Ending3Backgroundwidth, Ending3Backgroundheight);
  image(BackgroundImage4, Ending3Backgroundx, Ending3Backgroundy, Ending3Backgroundwidth, Ending3Backgroundheight);
  rect(ResetButton3x, ResetButton3y, ResetButton3width, ResetButton3height);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>ResetButton3x && mouseX<ResetButton3x+ResetButton3width && mouseY>ResetButton3y && mouseY<ResetButton3y+ResetButton3height) {
    hoverOverColor = Red;
    fill(hoverOverColor);
    rect(ResetButton3x, ResetButton3y, ResetButton3width, ResetButton3height);
    fill(resetDefaultInk);
  }
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(ButtonFont, size); 
  text(ResetButton, ResetButton3x, ResetButton3y, ResetButton3width, ResetButton3height);
  fill(resetDefaultInk);
  //
  fill(DarkRed);
  textAlign(CENTER, CENTER); 
  size = 120;
  textFont(DeathFont, size); 
  text(Ending3Text, Ending3x, Ending3y, Ending3width, Ending3height);
  fill(resetDefaultInk);
  //
}
