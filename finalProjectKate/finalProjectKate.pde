private StopWatchTimer sw;

void setup () {
 size(2000, 1600); 
 background(225);
 sw = new StopWatchTimer();
 sw.start();
}
private String screen="home";
private String hidden="";
void draw () {
  if (screen.equals("home")) {
    homeScreen();
    gameTitle();
    startButton();
    description();
  } else if (hidden.equals("book1")) {
    book1();
  } else if (hidden.equals("book2")) {
    book2();
  } else if (hidden.equals("safe")) {
    safeCode();
  } else if (screen.equals("game")) {
    gameScreen();
    quitGame();
    timer();
    desk();
    bookShelf();
    safe();
  }
}

void homeScreen(){
  fill(225);
  rect(0,0,2000,1600);
}

void startButton() {
  fill(0, 255, 51);
  rect(850, 1200, 300, 100);
  fill(100, 100, 100);
  textSize(40);
  text("START GAME", 875, 1268);
  cursor(ARROW);
  if (mouseX<1150&&mouseX>850&&mouseY<1300&&mouseY>1200) {
      if (mousePressed) {
        screen="game";
        redraw();
      }
    }
}

void gameTitle() {
  fill(0);
  textSize(160);
  text("ESCAPE ROOM", 450, 350);
}

void description() {
  fill(0);
  textSize(50);
  text("You are an agent for the CIA. The", 500,600);
  fill(0);
  textSize(50);
  text("government suspects that John Smith,",500,650);
  fill(0);
  textSize(50);
  text("a former agent, is a North Korean spy",500,700);
  fill(0);
  textSize(50);
  text("who is sharing secrets with the Korean",500,750);
  fill(0);
  textSize(50);
  text("government. Your job is to break into his",500,800);
  fill(0);
  textSize(50);
  text("office and open his safe to expose the secrets,",500,850);
  fill(0);
  textSize(50);
  text("but be careful as he will return after 1 hour.",500,900);
  fill(0);
  textSize(50);
  text("Mr. Smith is very precise, so look for anything",500,950);
  fill(0);
  textSize(50);
  text("out of the ordinary. Good luck agent!",500,1000);
}

void gameScreen() {
  fill(225);
  rect(0,0,2000,1600);
}

void quitGame() {
  fill(0, 255, 51);
  rect(25, 25, 165, 30);
  fill(0);
  textSize(30);
  text("Quit Game", 30, 50);
  if (mouseX<180&&mouseX>25&&mouseY<55&&mouseY>25) {
      if (mousePressed) {
        screen="home";
        redraw();
    }
  }
}

void timer() {
  fill(0);
  textSize(48);
  text(nf(sw.hour(), 2)+":"+nf(sw.minute(), 2)+":"+nf(sw.second(), 2), 50, 1500);
}

void bookShelf() {
  fill(76, 31, 0);
  rect(600, 50, 1100, 100);
  fill(206, 48, 16);
  rect(615, 60, 26, 80);
  fill(255);
  triangle(615, 60, 641, 60, 628, 70);
  fill(15, 133, 206);
  rect(650, 60, 26, 80);
  fill(255);
  triangle(650, 60, 676, 60, 663, 70);
  fill(58, 183, 9);
  rect(685, 60, 26, 80);
  fill(255);
  triangle(685, 60, 711, 60, 698, 70);
  fill(206, 48, 16);
  rect(720, 60, 26, 80);
  fill(255);
  triangle(720, 60, 746, 60, 733, 70);
  fill(15, 133, 206);
  rect(755, 60, 26, 80);
  fill(255);
  triangle(755, 60, 781, 60, 768, 70);
  fill(58, 183, 9);
  rect(790, 60, 26, 80);
  fill(255);
  triangle(790, 60, 816, 60, 803, 70);
  fill(206, 48, 16);
  rect(825, 60, 26, 80);
  fill(255);
  triangle(825, 60, 851, 60, 838, 70);
  fill(15, 133, 206);
  rect(860, 60, 26, 80);
  fill(255);
  triangle(860, 60, 886, 60, 873, 70);
  fill(58, 183, 9);
  rect(895, 60, 26, 80);
  fill(255);
  triangle(895, 60, 921, 60, 908, 70);
  fill(206, 48, 16);
  rect(930, 60, 26, 80);
  fill(255);
  triangle(930, 60, 956, 60, 943, 70);
  fill(15, 133, 206);
  rect(965, 60, 26, 80);
  fill(255);
  triangle(965, 60, 991, 60, 978, 70);
  fill(58, 183, 9);
  rect(1000, 60, 26, 80);
  fill(255);
  triangle(1000, 60, 1026, 60, 1013, 70);
  fill(206, 48, 16);
  rect(1035, 60, 26, 80);
  fill(255);
  triangle(1035, 60, 1061, 60, 1048, 70);
  fill(15, 133, 206);
  rect(1070, 60, 26, 80);
  fill(255);
  triangle(1070, 60, 1096, 60, 1083, 70);
  fill(58, 183, 9);
  rect(1105, 60, 26, 80);
  fill(255);
  triangle(1105, 60, 1131, 60, 1118, 70);
  fill(206, 48, 16);
  rect(1140, 60, 26, 80);
  fill(255);
  triangle(1140, 60, 1166, 60, 1153, 70);
  fill(15, 133, 206);
  rect(1175, 60, 26, 80);
  fill(255);
  triangle(1175, 60, 1201, 60, 1188, 70);
  fill(58, 183, 9);
  rect(1210, 60, 26, 80);
  fill(255);
  triangle(1210, 60, 1236, 60, 1223, 70);
  fill(206, 48, 16);
  rect(1245, 60, 26, 80);
  fill(255);
  triangle(1245, 60, 1271, 60, 1258, 70);
  fill(15, 133, 206);
  rect(1280, 60, 26, 80);
  fill(255);
  triangle(1280, 60, 1306, 60, 1293, 70);
  fill(58, 183, 9);
  rect(1315, 60, 26, 80);
  fill(255);
  triangle(1315, 60, 1341, 60, 1328, 70);
  fill(206, 48, 16);
  rect(1350, 60, 26, 80);
  fill(255);
  triangle(1350, 60, 1376, 60, 1363, 70);
  fill(15, 133, 206);
  rect(1385, 60, 26, 80);
  fill(255);
  triangle(1385, 60, 1411, 60, 1398, 70);
  fill(58, 183, 9);
  rect(1420, 60, 26, 80);
  fill(255);
  triangle(1420, 60, 1446, 60, 1433, 70);
  fill(206, 48, 16);
  rect(1455, 60, 26, 80);
  fill(255);
  triangle(1455, 60, 1481, 60, 1468, 70);
  fill(15, 133, 206);
  rect(1490, 60, 26, 80);
  fill(255);
  triangle(1490, 60, 1516, 60, 1503, 70);
  fill(58, 183, 9);
  rect(1525, 60, 26, 80);
  fill(255);
  triangle(1525, 60, 1551, 60, 1538, 70);
  fill(206, 48, 16);
  rect(1560, 60, 26, 80);
  fill(255);
  triangle(1560, 60, 1586, 60, 1573, 70);
  fill(15, 133, 206);
  rect(1595, 60, 26, 80);
  fill(255);
  triangle(1595, 60, 1621, 60, 1608, 70);
  fill(58, 183, 9);
  rect(1630, 60, 26, 80);
  fill(255);
  triangle(1630, 60, 1656, 60, 1643, 70);
  fill(206, 48, 16);
  rect(1665, 60, 26, 80);
  fill(255);
  triangle(1665, 60, 1691, 60, 1678, 70);
  cursor(ARROW);
  if (mouseX<1386&&mouseX>1350&&mouseY<140&&mouseY>60) {
    cursor(HAND);
    if (mousePressed) {
        hidden="book1";
        redraw();
    }
  }
  if (mouseX<781&&mouseX>755&&mouseY<140&&mouseY>60) {
    cursor(HAND);
    if (mousePressed) {
        hidden="book2";
        redraw();
    }
  }
  fill(15, 133, 206);
  rect(755, 60, 26, 80);
  fill(255);
  triangle(755, 60, 781, 60, 768, 70);
}

void book1() {
  fill(225);
  rect(0,0,2000,1600);
  fill(206, 48, 16);
  rect(200, 200, 1600, 1200);
  fill(255);
  rect(250, 250, 725, 1100);
  fill(255);
  rect(1025, 250, 725, 1100);
  fill(124, 70, 0);
  rect(975, 200, 50, 1200);
  //text of book1
  fill(125);
  rect(1700, 1450, 150, 50);
  fill(0);
  textSize(40);
  text("CLOSE", 1715, 1490);
  cursor(ARROW);
  if (mouseX<1850&&mouseX>1700&&mouseY<1500&&mouseY>1450) {
    cursor(HAND);
    if (mousePressed) {
        hidden="";
        redraw();
    }
  } 
}

void book2() {
  fill(225);
  rect(0,0,2000,1600);
  fill(15, 133, 206);
  rect(200, 200, 1600, 1200);
  fill(255);
  rect(250, 250, 725, 1100);
  fill(255);
  rect(1025, 250, 725, 1100);
  fill(124, 70, 0);
  rect(975, 200, 50, 1200);
  //text of book1
  fill(125);
  rect(1700, 1450, 150, 50);
  fill(0);
  textSize(40);
  text("CLOSE", 1715, 1490);
  cursor(ARROW);
  if (mouseX<1850&&mouseX>1700&&mouseY<1500&&mouseY>1450) {
    cursor(HAND);
    if (mousePressed) {
        hidden="";
        redraw();
    }
  } 
}

void desk(){
  fill(107, 44, 2);
  rect(750, 650, 500, 300);
}

void safe() {
  fill(125);
  rect(50, 400, 200, 300);
  fill(0);
  ellipse(150, 550, 75, 75);
  fill(50);
  ellipse(150, 550, 40, 40);
  cursor(ARROW);
  if (mouseX<225&&mouseX>75&&mouseY<625&&mouseY>475) {
    cursor(HAND);
    if (mousePressed) {
        hidden="safe";
        redraw();
    }
  }
}

void safeCode() {
  fill(225);
  rect(0,0,2000,1600);
  fill(0);
  textSize(100);
}
