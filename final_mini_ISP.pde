int buttonColour = 155;
int AIcardType = int(random(1, 3));
int PlayerCardType = 0;
int a = 0;



void setup() {
  size(500, 500);
  fill(buttonColour);
  rect(100, 100, 100, 100);
  rect(300, 100, 100, 100);
  rect(100, 300, 100, 100);
  println("AIcardType is:" + AIcardType);
  println("PlayerCardType is:" + PlayerCardType);
}
void draw() {
  if (AIcardType == 1 && PlayerCardType == 2) {
    a = 1;
  }

}
void mouseClicked() {
  if (mouseX>100 && mouseX<200 && mouseY>100 && mouseY<200) {
    PlayerCardType = 1;
  } else if (mouseX>300 && mouseX<400 && mouseY>100 && mouseY<200) {
    PlayerCardType = 2;
  } else if (mouseX>100 && mouseX<200 && mouseY>300 && mouseY<400) {
    PlayerCardType = 3;
  }
}