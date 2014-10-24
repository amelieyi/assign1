SlotMachine machine;
boolean rolling = false;
// button information
boolean button = false;
int x = 640/2;
int y = 440;
int w = 150;
int h = 50;

// declare variables
// --------------------------------------------
// put your code inside here
int totalScore = 500;


int fruitId;
int slotPosition;
float probability;


// --------------------------------------------

void setup() {
  size(640,480);
  textFont(createFont("fonts/Square_One.ttf", 20));
  machine = new SlotMachine();
}

void draw() {
  background(245,229,124);
  fill(64,162,171);
  rect(320,248,396,154,25);
  fill(253,253,253);
  rect(220,247,97,114,2);
  rect(320,247,97,114,2);
  rect(420,247,97,114,2);
  // draw button
  fill(64,162,171);
  noStroke();
  rectMode(CENTER);
  rect(x,y,w,h,105);
  // show title
  fill(64,64,63);
  textAlign(CENTER, CENTER);
  textSize(32);
  text("Slot Machine",x,49);
  textSize(20);
  text("Score"+" "+":"+" "+totalScore,x, 89);
  
  // event handler
  if (button) {
    if (!rolling){
      rolling = true;
      // start rolling
      // -------------------------------------------------
      // put your code inside here
totalScore = totalScore - 50;


      // -------------------------------------------------
    }
    machine.roll();
    textSize(19);
    text("Stop",x,y);
  
  } else {
    if (rolling){
      rolling = false;
      // stop rolling
      // -------------------------------------------------
      // put your code inside here


int fruitA = int(random(0,6));  //fruit in slot0
int fruitB = int(random(0,6));  //fruit in slot1
int fruitC = int(random(0,6));  //fruit in slot2


int _777_ = machine.probability(0.1);
if(_777_ == 1){
  fruitA=0;
  fruitB=0;
  fruitC=0;    
}


machine.setSlotFruit (0,fruitA);
machine.setSlotFruit (1,fruitB);
machine.setSlotFruit (2,fruitC);


int seven = machine.getFruitCount(0);
int orange = machine.getFruitCount(1);
int cherry = machine.getFruitCount(2);
int lemon = machine.getFruitCount(3);
int watermalon = machine.getFruitCount(4);
int banana = machine.getFruitCount(5);


int score0 = machine.getSlotScore(0);
int score1 = machine.getSlotScore(1);
int score2 = machine.getSlotScore(2);


score0 = seven*60+orange*10+cherry*20+lemon*30+watermalon*40+banana*50;
score1 = seven*60+orange*10+cherry*20+lemon*30+watermalon*40+banana*50;
score2 = seven*60+orange*10+cherry*20+lemon*30+watermalon*40+banana*50;


totalScore = totalScore+score0+score1+score2;

           
      // -------------------------------------------------
    }
    machine.stop();
    fill(253,253,253);
    textSize(19);
    text("Roll",x,y);
  }

}

// When the mouse is pressed, the state of the button is toggled.   
void mousePressed() {
  if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
    button = !button;
  }  
}






