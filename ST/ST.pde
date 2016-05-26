int buttonColour = 155;
int AIcardType = int(random(1, 4));
int PlayerCardType = 0;
int a = 0;
int b = 0;
int c = 0;
PImage img1;
PImage img2;
PImage img3;
int time = 0;
int DisplayThing = 0;
int TextOpacity1 = 0;


void setup() {
  //set up the background and buttons
  size(500, 500);
  img1 = loadImage("paper-rock-scissors.jpg");
}
void draw() {

    image(img1, 0, 0);
  fill(buttonColour);
  rect(100, 100, 100, 100);
  rect(300, 100, 100, 100);
  rect(200, 300, 100, 100);
  println("AIcardType is:" + AIcardType);
  textSize(36);
  fill(0);
  textAlign(CENTER);
  text("Rock", 150, 150);
  text("Paper", 350, 150);
  text("Scissors", 250, 350);

  
  //functions to check for winning/losing/tying 
  if (AIcardType == 1 && PlayerCardType == 2) {
    a = 1;
  }
  if (AIcardType == 2 && PlayerCardType == 3) {
    a = 1;
  }
  if (AIcardType == 3 && PlayerCardType == 1) {
    a = 1;
  }
  if (AIcardType == 1 && PlayerCardType == 2) {
    a = 1;
  }
  if (AIcardType == 1 && PlayerCardType == 3) {
    b = 1;
  }
  if (AIcardType == 2 && PlayerCardType == 1) {
    b = 1;
  }
  if (AIcardType == 3 && PlayerCardType == 2) {
    b = 1;
  }
  if (AIcardType == PlayerCardType) {
    c = 1;
  }
  if (frameCount % 60 == 0) {
    time += 1;
  }
  if ( time == 1) {
    DisplayThing = 1;
    println("Display Thing ="+DisplayThing);
  }
  if ( time == 2) {
    TextOpacity1 = 0;
    DisplayThing = 2;
    println("Display Thing ="+DisplayThing);
  }
  if ( time == 3) {
    DisplayThing = 3;
    println("Display Thing ="+DisplayThing);
  }

  //make a timed display of ROCK PAPER SCISSORS
  if (DisplayThing == 1) {
    fill(0);
    text("ROCK!!!", 250, 250);
    noFill();
  }

  if (DisplayThing == 2) {
    fill(0);
    text("PAPER!!!", 250, 250);
    noFill();
  }
  if (DisplayThing == 3) {
    fill(0);
    text("SCISSORS!!!", 250, 250);
    noFill();
  }


  textSize(48);
  if (a == 1) {
    img2 = loadImage("star (1).png");
    image(img2, 0, 0);
    fill(0);
    textAlign(CENTER);
    text("WINNER!", 250, 250);
  }
  if (b == 1) {
    img3 = loadImage("fire-textures-5.jpg");
    image(img3, 0, 0);
    fill(0);
    textAlign(CENTER);
    text("YOU LOSE!", 250, 250);
  }
  if (c == 1) {
    fill(0);
    textAlign(CENTER);
    text("TIE!", 250, 50);
  }
}
void mouseClicked() {
  if (mouseX>100 && mouseX<200 && mouseY>100 && mouseY<200) {
    PlayerCardType = 1;
    buttonColour = 100;
  } else if (mouseX>300 && mouseX<400 && mouseY>100 && mouseY<200) {
    PlayerCardType = 2;
  } else if (mouseX>200 && mouseX<300 && mouseY>300 && mouseY<400) {
    PlayerCardType = 3;
  }
  if (mouseX>100 && mouseX<200 && mouseY>100 && mouseY<200) {
    println("PlayerCardType is:" + PlayerCardType);
  }
  if (mouseX>300 && mouseX<400 && mouseY>100 && mouseY<200) {
    println("PlayerCardType is:" + PlayerCardType);
  }
  if (mouseX>200 && mouseX<300 && mouseY>300 && mouseY<400) {
    println("PlayerCardType is:" + PlayerCardType);
  }
}