void WolfHide () {
  //
  rect(Ending6Backgroundx, Ending6Backgroundy, Ending6Backgroundwidth, Ending6Backgroundheight);
  image(BackgroundImage6, Ending6Backgroundx, Ending6Backgroundy, Ending6Backgroundwidth, Ending6Backgroundheight);
  rect(Title6x, Title6y, Title6width, Title6height);
  rect(Ending6x, Ending6y, Ending6width, Ending6height);
  rect(ResetButton6x, ResetButton6y, ResetButton6width, ResetButton6height);
  //
  color hoverOverColor=resetDefaultInk;
  if (mouseX>ResetButton6x && mouseX<ResetButton6x+ResetButton6width && mouseY>ResetButton6y && mouseY<ResetButton6y+ResetButton6height) {
    hoverOverColor = Red;
    fill(hoverOverColor);
    rect(ResetButton6x, ResetButton6y, ResetButton6width, ResetButton6height);
    fill(resetDefaultInk);
  }
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(QuestionFont, size); 
  text(Ending6Text, Ending6x, Ending6y, Ending6width, Ending6height);
  fill(resetDefaultInk);
  //
  fill(Black);
  textAlign(CENTER, CENTER); 
  size = 30;
  textFont(ButtonFont, size); 
  text(ResetButton, ResetButton6x, ResetButton6y, ResetButton6width, ResetButton6height);
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
