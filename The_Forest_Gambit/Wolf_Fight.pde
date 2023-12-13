void WolfFight () {
  //
  rect(Ending7x, Ending7y, Ending7width, Ending7height);
  rect(Ending7Backgroundx, Ending7Backgroundy, Ending7Backgroundwidth, Ending7Backgroundheight);
  image(BackgroundImage4, Ending7Backgroundx, Ending7Backgroundy, Ending7Backgroundwidth, Ending7Backgroundheight);
  rect(ResetButton7x, ResetButton7y, ResetButton7width, ResetButton7height);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>ResetButton7x && mouseX<ResetButton7x+ResetButton7width && mouseY>ResetButton7y && mouseY<ResetButton7y+ResetButton7height) {
    hoverOverColor = Red;
    fill(hoverOverColor);
    rect(ResetButton7x, ResetButton7y, ResetButton7width, ResetButton7height);
    fill(resetDefaultInk);
  }
  //
  fill(DarkRed);
  textAlign(CENTER, CENTER); 
  size = 40;
  textFont(DeathFont, size); 
  text(Ending7Text, Ending7x, Ending7y, Ending7width, Ending7height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(ButtonFont, size); 
  text(ResetButton, ResetButton7x, ResetButton7y, ResetButton7width, ResetButton7height);
  fill(resetDefaultInk);
  //
}
