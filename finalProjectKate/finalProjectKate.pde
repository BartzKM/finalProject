private StopWatchTimer sw;

void setup () {
 size(2000, 1600); 
 background(225);
 sw = new StopWatchTimer();
 sw.start();
}
private String screen="home";
private String hidden="";
private String game="";
void draw () {
  if (screen.equals("home")) { //when on home screen
    homeScreen();
    gameTitle();
    startButton();
    description();
  } else if (hidden.equals("book1")) { //when book1 is clicked
    book1();
  } else if (hidden.equals("book2")) { //when book2 is clicked
    book2();
  } else if (hidden.equals("safe")) { //when the safe is clicked
    safeCode();
  } else if (game.equals("over")) { //if game is won/lost
    gameOver();
  } else if (hidden.equals("art1")) { //if art1 is clicked
    art1();
  } else if (hidden.equals("art2")) { //if art2 is clicked
    art2();
  } else if (hidden.equals("art3")) { //if art3 is clicked
    art3();
  } else if (hidden.equals("art4")) { //if art4 is clicked
    art4();
  } else if (screen.equals("game")) { //when in the prime game screen
    gameScreen();
    quitGame();
    timer();
    desk();
    bookShelf();
    safe();
    art();
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
        redraw(); //changes the screen to the game screen
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
  text("but be careful as he will return after 15 minutes.",500,900);
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
        redraw(); //returns to home screen
    }
  }
}

void timer() {
  fill(0);
  textSize(48);
  text(nf(sw.hour(), 2)+":"+nf(sw.minute(), 2)+":"+nf(sw.second(), 2), 50, 1500); //running timer in the game
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
        redraw();//book1 when clicked switches screens
    }
  }
  if (mouseX<781&&mouseX>755&&mouseY<140&&mouseY>60) {
    cursor(HAND);
    if (mousePressed) {
        hidden="book2";
        redraw();//book2 when clicked switches screens
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
        redraw(); //close button goes back to game screen
    }
  } 
  fill(0);
  textSize(40);
  text("I couldn’t forgive him,", 1100, 300);
  text("or like him but I saw,", 1100, 375);
  text("that what he had done", 1100, 450);
  text("was to him, entirely", 1100, 525);
  text("justified. It was all", 1100, 600);
  text("very careless and confused.", 1100, 675);
  text("They were careless people,", 1100, 750);
  text("Tom and Daisy—they smashed", 1100, 825);
  text("up things and creatures and", 1100, 900);
  text("then retreated back into", 1100, 975);
  text("their money or their vast", 1100, 1050);
  text("carelessness, or whatever", 1100, 1125);
  text("it was that kept them together,", 1100, 1200);
  text("and let otherpeople clean", 1100, 1275);
  text("up the mess they had made.", 1100, 1340);
  textSize(80);
  text("THE GREAT", 350, 700);
  text("GATSBY", 390, 800); //text from the Great Gatsby
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
        redraw();//close button returns to home screen
    }
  } 
  fill(0);
  textSize(40);
  text("I ain't got no people.", 1100, 300);
  text("I seen the guys that go", 1100, 375);
  text(" around on the ranches", 1100, 450);
  text("alone. That ain't no", 1100, 525);
  text("good. They don't have", 1100, 600);
  text("no fun. After a long", 1100, 675);
  text("time they get mean.", 1100, 750);
  text("They get wantin' to", 1100, 825);
  text("fight all the time. . .", 1100, 900);
  text("'Course Lennie's a God", 1100, 975);
  text("damn nuisance most of", 1100, 1050);
  text("the time, but you get", 1100, 1125);
  text("used to goin' around", 1100, 1200);
  text("with a guy an' you", 1100, 1275);
  text("can't get rid of him", 1100, 1350);
  textSize(80);
  text("OF MICE AND", 350, 700);
  text("MEN", 500, 800); //book text from Of Mice and Men
}

void desk(){
  fill(117, 62, 25);
  rect(675, 575, 650, 450);
  fill(198, 108, 47);
  rect(675, 575, 25, 25);
  fill(0);
  textSize(28);
  text("Z", 680, 600);
  fill(198, 108, 47);
  rect(700, 575, 25, 25);
  fill(0);
  textSize(28);
  text("A", 705, 600);
  fill(198, 108, 47);
  rect(725, 575, 25, 25);
  fill(0);
  textSize(28);
  text("Q", 730, 600);
  fill(198, 108, 47);
  rect(750, 575, 25, 25);
  fill(0);
  textSize(28);
  text("W", 752, 600);
  fill(198, 108, 47);
  rect(775, 575, 25, 25);
  fill(0);
  textSize(28);
  text("S", 780, 600);
  fill(198, 108, 47);
  rect(800, 575, 25, 25);
  fill(0);
  textSize(28);
  text("X", 805, 600);
  fill(198, 108, 47);
  rect(825, 575, 25, 25);
  fill(0);
  textSize(28);
  text("C", 830, 600);
  fill(198, 108, 47);
  rect(850, 575, 25, 25);
  fill(0);
  textSize(28);
  text("D", 855, 600);
  fill(198, 108, 47);
  rect(875, 575, 25, 25);
  fill(0);
  textSize(28);
  text("E", 880, 600);
  fill(198, 108, 47);
  rect(900, 575, 25, 25);
  fill(0);
  textSize(28);
  text("R", 905, 600);
  fill(198, 108, 47);
  rect(925, 575, 25, 25);
  fill(0);
  textSize(28);
  text("F", 930, 600);
  fill(198, 108, 47);
  rect(950, 575, 25, 25);
  fill(0);
  textSize(28);
  text("V", 955, 600);
  fill(198, 108, 47);
  rect(975, 575, 25, 25);
  fill(0);
  textSize(28);
  text("B", 980, 600);
  fill(198, 108, 47);
  rect(1000, 575, 25, 25);
  fill(0);
  textSize(28);
  text("G", 1005, 600);
  fill(198, 108, 47);
  rect(1025, 575, 25, 25);
  fill(0);
  textSize(28);
  text("T", 1030, 600);
  fill(198, 108, 47);
  rect(1050, 575, 25, 25);
  fill(0);
  textSize(28);
  text("Y", 1055, 600);
  fill(198, 108, 47);
  rect(1075, 575, 25, 25);
  fill(0);
  textSize(28);
  text("H", 1080, 600);
  fill(198, 108, 47);
  rect(1100, 575, 25, 25);
  fill(0);
  textSize(28);
  text("N", 1105, 600);
  fill(198, 108, 47);
  rect(1125, 575, 25, 25);
  fill(0);
  textSize(28);
  text("J", 1135, 600);
  fill(198, 108, 47);
  rect(1150, 575, 25, 25);
  fill(0);
  textSize(28);
  text("U", 1155, 600);
  fill(198, 108, 47);
  rect(1175, 575, 25, 25);
  fill(0);
  textSize(28);
  text("I", 1185, 600);
  fill(198, 108, 47);
  rect(1200, 575, 25, 25);
  fill(0);
  textSize(28);
  text("K", 1205, 600);
  fill(198, 108, 47);
  rect(1225, 575, 25, 25);
  fill(0);
  textSize(28);
  text("M", 1227, 600);
  fill(198, 108, 47);
  rect(1250, 575, 25, 25);
  fill(0);
  textSize(28);
  text("L", 1255, 600);
  fill(198, 108, 47);
  rect(1275, 575, 25, 25);
  fill(0);
  textSize(28);
  text("O", 1277, 600);
  fill(198, 108, 47);
  rect(1300, 575, 25, 25);
  fill(0);
  textSize(28);
  text("P", 1305, 600);
  
  fill(198, 108, 47);
  rect(675, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("0", 680, 1025);
  fill(198, 108, 47);
  rect(700, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("1", 705, 1025);
  fill(198, 108, 47);
  rect(725, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("2", 730, 1025);
  fill(198, 108, 47);
  rect(750, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("3", 755, 1025);
  fill(198, 108, 47);
  rect(775, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("4", 780, 1025);
  fill(198, 108, 47);
  rect(800, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("5", 805, 1025);
  fill(198, 108, 47);
  rect(825, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("6", 830, 1025);
  fill(198, 108, 47);
  rect(850, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("7", 855, 1025);
  fill(198, 108, 47);
  rect(875, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("8", 880, 1025);
  fill(198, 108, 47);
  rect(900, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("9", 905, 1025);
  fill(198, 108, 47);
  rect(925, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("0", 930, 1025);
  fill(198, 108, 47);
  rect(950, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("1", 955, 1025);
  fill(198, 108, 47);
  rect(975, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("2", 980, 1025);
  fill(198, 108, 47);
  rect(1000, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("3", 1005, 1025);
  fill(198, 108, 47);
  rect(1025, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("4", 1030, 1025);
  fill(198, 108, 47);
  rect(1050, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("5", 1055, 1025);
  fill(198, 108, 47);
  rect(1075, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("6", 1080, 1025);
  fill(198, 108, 47);
  rect(1100, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("7", 1105, 1025);
  fill(198, 108, 47);
  rect(1125, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("8", 1130, 1025);
  fill(198, 108, 47);
  rect(1150, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("9", 1155, 1025);
  fill(198, 108, 47);
  rect(1175, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("0", 1180, 1025);
  fill(198, 108, 47);
  rect(1200, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("1", 1205, 1025);
  fill(198, 108, 47);
  rect(1225, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("2", 1230, 1025);
  fill(198, 108, 47);
  rect(1250, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("3", 1255, 1025);
  fill(198, 108, 47);
  rect(1275, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("4", 1280, 1025);
  fill(198, 108, 47);
  rect(1300, 1000, 25, 25);
  fill(0);
  textSize(28);
  text("5", 1305, 1025); //decoder on the desk
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
        redraw();//when the safe is clicked, changes to safe screen
    }
  }
}

void art() {
  fill(0);
  rect(1850, 200, 100, 200);
  rect(1850, 500, 100, 200);
  rect(1850, 800, 100, 200);
  rect(1850, 1100, 100, 200);
  cursor(ARROW);
  if (mouseX<1950&&mouseX>1850&&mouseY<400&&mouseY>200) {
    cursor(HAND);
    if (mousePressed) {
        hidden="art1";
        redraw();//click on art1 changes screen
    }
  } 
  if (mouseX<1950&&mouseX>1850&&mouseY<700&&mouseY>500) {
    cursor(HAND);
    if (mousePressed) {
        hidden="art2";
        redraw();//click on art2 changes screen
    }
  }
  cursor(ARROW);
  if (mouseX<1950&&mouseX>1850&&mouseY<1000&&mouseY>800) {
    cursor(HAND);
    if (mousePressed) {
        hidden="art3";
        redraw();//click on art3 changes screen
    }
  }
  cursor(ARROW);
  if (mouseX<1950&&mouseX>1850&&mouseY<1300&&mouseY>1100) {
    cursor(HAND);
    if (mousePressed) {
        hidden="art4";
        redraw();//click on art4 changes screen
    }
  }
}

void art1() {
  fill(225);
  rect(0,0,2000,1600);
  fill(0);
  rect(600,100,800,1400);
  fill(224, 78, 78);
  rect(700, 200, 600, 1200);
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
        redraw();//close button returns to game screen
    }
  } 
  fill(0);
  textSize(60);
  text("1", 1200, 1300);
}

void art2() {
  fill(225);
  rect(0,0,2000,1600);
  fill(0);
  rect(600,100,800,1400);
  fill(247, 230, 76);
  rect(700, 200, 600, 1200);
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
        redraw();//close button return to game screen
    }
  } 
  fill(0);
  textSize(60);
  text("2", 1200, 1300);
}

void art3() {
  fill(225);
  rect(0,0,2000,1600);
  fill(0);
  rect(600,100,800,1400);
  fill(92, 232, 106);
  rect(700, 200, 600, 1200);
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
        redraw();//close button returs to game screen
    }
  } 
  fill(0);
  textSize(60);
  text("3", 1200, 1300);
}

void art4() {
  fill(225);
  rect(0,0,2000,1600);
  fill(0);
  rect(600,100,800,1400);
  fill(125);
  rect(1700, 1450, 150, 50);
  fill(42, 204, 204);
  rect(700, 200, 600, 1200);
  fill(0);
  textSize(40);
  text("CLOSE", 1715, 1490);
  cursor(ARROW);
  if (mouseX<1850&&mouseX>1700&&mouseY<1500&&mouseY>1450) {
    cursor(HAND);
    if (mousePressed) {
        hidden="";
        redraw();//close button returns to home screen
    }
  } 
  fill(0);
  textSize(60);
  text("4", 1200, 1300);
}

void safeCode() {
  fill(225);
  rect(0,0,2000,1600);
  fill(0);
  textSize(300);
  text("SAFE", 600, 500);
  fill(0); 
  textSize(75);
  text("Enter 4 Digit Code", 630, 700);
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
        redraw();//close button returns to home screen
    }
  } 
}
void gameOver() { //when game is won/lost
  fill(225);
  rect(0,0,2000,1600);
  fill(0);
  textSize(200);
  text("GAME OVER", 400, 500);
  textSize(100);
  text("You win!", 725, 650);
    fill(0, 255, 51);
  rect(800, 800, 300, 80);
  fill(100, 100, 100);
  textSize(60);
  text("RESTART", 820, 860);
  cursor(ARROW);
  if (mouseX<1150&&mouseX>850&&mouseY<880&&mouseY>800) {
      if (mousePressed) {
        screen="home";
        game="";
        redraw(); //button returns to home screen to start over
      }
    }
}
