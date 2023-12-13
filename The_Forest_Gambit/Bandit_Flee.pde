void BanditFlee () {
  //
  rect(Ending5x, Ending5y, Ending5width, Ending5height);
  rect(Ending5Backgroundx, Ending5Backgroundy, Ending5Backgroundwidth, Ending5Backgroundheight);
  image(BackgroundImage4, Ending5Backgroundx, Ending5Backgroundy, Ending5Backgroundwidth, Ending5Backgroundheight);
  rect(ResetButton5x, ResetButton5y, ResetButton5width, ResetButton5height);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>ResetButton5x && mouseX<ResetButton5x+ResetButton5width && mouseY>ResetButton5y && mouseY<ResetButton5y+ResetButton5height) {
    hoverOverColor = Red;
    fill(hoverOverColor);
    rect(ResetButton5x, ResetButton5y, ResetButton5width, ResetButton5height);
    fill(resetDefaultInk);
  }
  //
  fill(DarkRed);
  textAlign(CENTER, CENTER); 
  size = 50;
  textFont(DeathFont, size); 
  text(Ending5Text, Ending5x, Ending5y, Ending5width, Ending5height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(ButtonFont, size); 
  text(ResetButton, ResetButton5x, ResetButton5y, ResetButton5width, ResetButton5height);
  fill(resetDefaultInk);
  //
}
