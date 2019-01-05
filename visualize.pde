PFont mf1;
int state= 0;
int month = 0;
int grade = 0;
int gender = 0;
int std = 5000000;
int [][][][][] data;
void setup() {
  size(1000, 600);
mf1=createFont("微软雅黑",16);
textFont(mf1);
readData();
}

void draw() {
  if (state==1){
    PImage img;
  img=loadImage("bcg1.jpg");
  background(img);

  drawButton();

  displayFrame();

  displayData();}
  else if(state==0){ 
    
    PImage img1;
  img1=loadImage("bcg2.jpg");
  background(img1);
    
  }
}

void drawButton1(){
    rectMode(CORNERS);
     stroke(255);
  line(150, 500, 150, 200);
  line(150, 500, 800, 500);
  fill(255);

}
void displayData() {

  rectMode(CORNERS);
  for (int i=0; i<data[month].length; i++) {
    fill(128, 250, 200);
    rect(166+i*25, 500, 174+i*25, 500-data[month][i][gender][grade][0]*1.0/std*30);
    fill(186, 134, 196);
    rect(166+i*25, 500-data[month][i][gender][grade][0]*1.0/std*30, 
      174+i*25, 500-data[month][i][gender][grade][0]*1.0/std*30-data[month][i][gender][grade][1]*1.0/std*30);
    fill(252, 193, 0);
    rect(166+i*25, 500-data[month][i][gender][grade][0]*1.0/std*30-data[month][i][gender][grade][1]*1.0/std*30, 
      174+i*25, 500-data[month][i][gender][grade][0]*1.0/std*30-data[month][i][gender][grade][1]*1.0/std*30-data[month][i][gender][grade][2]*1.0/std*30);
  }
  rectMode(CORNER);
}

void displayFrame() {
stroke(200);

  line(150, 500, 150, 200);

  line(150, 500, 950, 500);
  fill(255);
  for (int i=0; i<30; i++) {
    line(170+25*i, 500, 170+25*i, 495);
    text(i+1, 165+25*i, 515);
  }

  for (int i=0; i<9; i++) {
    line(150, 470-i*30, 155, 470-i*30);
    text((i+1)*std, 60, 475-i*30);
  }
  fill(90,193,90);
  text("消费时间（日）", 850, 540);
  text("交易额（元）", 60, 200);

  fill(128, 250, 200);
  rect(300, 540, 30, 15);
  fill(186, 134, 196);
  rect(450, 540, 30, 15);
  fill(252, 193, 0);
  rect(600, 540, 30, 15);
  fill(255);
  //rect(750,540,30,15);
  text("餐饮", 340, 553);
  text("生活", 490, 553);
  text("运动", 640, 553);
  fill(128, 250, 200);
  text("餐饮包括：闵行第一食堂至闵行第五食堂", 350, 70);
    fill(186, 134, 196);
  text("生活包括：曦潮书店、学生服务中心、擦咖啡馆、图书馆", 360, 95);
    fill(252, 193, 0);
  text("运动包括：网球、光彪楼、游泳游泳健身等", 370, 120);

}

void drawButton() {
  fill(45,45,45,200);
  rect(50, 50, 70, 20);
  rect(50, 75, 70, 20);
  rect(50, 100, 70, 20);
  fill(117,76,36);
  text("9月份", 65, 65);
  text("10月份", 65, 90);
  text("11月份", 65, 115);
  fill(45,45,45,200);
  rect(150, 50, 70, 20);
  rect(150, 75, 70, 20);
  rect(150, 100, 70, 20);
  rect(150, 125, 70, 20);
  fill(117,76,36);
  text("本科", 170, 65);
  text("硕士", 170, 90);
  text("博士", 170, 115);
  text("总计", 170, 140);
  fill(45,45,45,200);
  rect(250, 50, 70, 20);
  rect(250, 75, 70, 20);
  rect(250, 100, 70, 20);
  fill(117,76,36);
  text("男生", 270, 65);
  text("女生", 270, 90);
  text("总计", 270, 115);
  fill(255);
  text("返回",810,65);
  fill(30,30,30,150);
rect(800,50,50,20);
  fill(200, 200 , 200, 100);
  if (month == 0) {
    rect(50, 50, 70, 20);std=5000000;
  } else if (month == 1) {
    rect(50, 75, 70, 20);std=5000000;
  } else {
    rect(50, 100, 70, 20);std=5000000;
  }
  if (grade == 0) {
    rect(150, 50, 70, 20);std=5000000;
  } else if (grade == 1) {
    rect(150, 75, 70, 20);std=50000000;
  } else if (grade == 2) {
    rect(150, 100, 70, 20);std=5000000;
  } else {
    rect(150, 125, 70, 20);std=5000000;
  }
  if (gender == 0) {
    rect(250, 50, 70, 20);std=2500000;
  } else if (gender == 1) {
    rect(250, 75, 70, 20);std=1000000;
  } else {
    rect(250, 100, 70, 20);std=5000000;
  }
}

void mousePressed() {
  if (state==0 && mouseX>435 && mouseX<600 && mouseY>460 && mouseY<515) {
    state = 1;} else if (state==1&&mouseX > 800 && mouseX < 850&& mouseY>50 && mouseY<70){state=0;}
    else{
  if (mouseX > 50 && mouseX < 125) {
    if (mouseY > 50 && mouseY < 70) {
      month = 0;
    } else if (mouseY >75 && mouseY < 95) {
      month = 1;
    } else if (mouseY > 95 && mouseY < 120) {
      month = 2;
    }
  } else if (mouseX > 150 && mouseX < 220) {
    if (mouseY > 50 && mouseY < 70) {
      grade = 0;
    } else if (mouseY >75 && mouseY < 95) {
      grade = 1;
    } else if (mouseY > 95 && mouseY < 125) {
      grade = 2;
    } else if (mouseY > 125 && mouseY < 145) {
      grade = 3;
    }
  } else if (mouseX > 250 && mouseX < 320) {
    if (mouseY > 50 && mouseY < 70) {
      gender = 0;
    } else if (mouseY >75 && mouseY < 95) {
      gender = 1;
    } else if (mouseY > 95 && mouseY < 125) {
      gender = 2;
    }
  }
}}

void readFile() {
  BufferedReader file_path = createReader("data.txt");
  try {
    String line;
    while ((line = file_path.readLine()) != null) {
      int index1, index2, index3, index4, index5;
      String [] list = split(line, ',');

      if (list[3].equals("09")) {
        index1 = 0;
      } else if (list[3].equals("10")) {
        index1 = 1;
      } else {
        index1 = 2;
      }

      index2 = int(list[4])-1;

      if (list[1].equals("男")) {
        index3 = 0;
      } else {
        index3 = 1;
      }

      if (list[2].equals("本科")) {
        index4 = 0;
      } else if (list[2].equals("硕士")) {
        index4 = 1;
      } else {
        index4 = 2;
      }

      if (list[6].equals("餐饮")) {
        index5 = 0;
      } else if (list[6].equals("生活")) {
        index5 = 1;
      } else {
        index5 = 2;
      }
      data[index1][index2][index3][index4][index5] += int(list[5]);
    }
  }
  catch (IOException e) {
    e.printStackTrace();
  }
}
