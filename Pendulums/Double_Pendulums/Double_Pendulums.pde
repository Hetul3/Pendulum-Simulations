float ran1 = random(0, 2*PI);

//from offset to ang2_2 are adjustable values

float offset = 0.002;

int rad = 175;

int rad1 = rad;
int rad2 = rad;
int rad1_2 = rad, rad2_2 = rad, rad1_3 = rad, rad2_3 = rad, rad1_4 = rad, rad2_4 = rad, rad1_5 = rad, rad2_5 = rad, rad1_6 = rad, rad2_6 = rad;

int m = 45;

float m1 = m, m2 = m, m1_2 = m, m2_2 = m, m1_3 = m, m2_3 = m, m1_4 = m, m2_4 = m, m1_5 = m, m2_5 = m, m1_6 = m, m2_6 = m;

float ang1 = ran1;
float ang2 = ran1;
float ang1_2 = ran1 + offset, ang2_2 = ran1, ang1_3 = ran1 + 2 * offset, ang2_3 = ran1, ang1_4 = ran1 + 3 * offset, ang2_4 = ran1, ang1_5 = ran1 + 4 * offset, ang2_5 = ran1, ang1_6 = ran1 + 5 * offset, ang2_6 = ran1; 

float ang1_v = 0;
float ang2_v = 0;
float ang1_v_2 = 0, ang2_v_2 = 0, ang1_v_3 = 0, ang2_v_3 = 0,ang1_v_4 = 0, ang2_v_4 = 0,ang1_v_5 = 0, ang2_v_5 = 0,ang1_v_6 = 0, ang2_v_6 = 0;
float g = 1;
float fricon = 0.999;
float sat = 0;
float prevx2 = -1;
float prevy2 = -1;
float prevx2_2 = -1, prevy2_2 = -1, prevx2_3 = -1, prevy2_3 = -1, prevx2_4 = -1, prevy2_4 = -1, prevx2_5 = -1, prevy2_5 = -1, prevx2_6 = -1, prevy2_6 = -1;
float cx, cy;

PGraphics tipdraw;

void setup() {
  size(700, 700);
  cx = width/2;
  cy = rad1 + rad2;
  colorMode(RGB);
  tipdraw = createGraphics(width, height);
  tipdraw.beginDraw();
  tipdraw.background(0);
  tipdraw.endDraw();
}

void draw() {
  //1
  float ang1_a = ((( -g * (2 * m1 + m2) * sin(ang1)) + (-m2 * g * sin(ang1-2*ang2)) + 
  (-2*sin(ang1-ang2)*m2) * (ang2_v*ang2_v*rad2+ang1_v*ang1_v*rad1*cos(ang1-ang2))) / 
  (rad1 * (2*m1+m2-m2*cos(2*ang1-2*ang2))));
 
  float ang2_a = (((2 * sin(ang1-ang2)) * (((ang1_v*ang1_v*rad1*(m1+m2))) + 
  (g * (m1 + m2) * cos(ang1)) + (ang2_v*ang2_v*rad2*m2*cos(ang1-ang2)))) / 
  (rad2 * (2*m1+m2-m2*cos(2*ang1-2*ang2))));
//2
  float ang1_a_2 = ((( -g * (2 * m1_2 + m2_2) * sin(ang1_2)) + (-m2_2 * g * sin(ang1_2-2*ang2_2)) + 
  (-2*sin(ang1_2-ang2_2)*m2_2) * (ang2_v_2*ang2_v_2*rad2_2+ang1_v_2*ang1_v_2*rad1_2*cos(ang1_2-ang2_2))) / 
  (rad1_2 * (2*m1_2+m2_2-m2_2*cos(2*ang1_2-2*ang2_2))));

  float ang2_a_2 = (((2 * sin(ang1_2-ang2_2)) * (((ang1_v_2*ang1_v_2*rad1_2*(m1_2+m2_2))) + 
  (g * (m1_2 + m2_2) * cos(ang1_2)) + (ang2_v_2*ang2_v_2*rad2_2*m2_2*cos(ang1_2-ang2_2)))) / 
  (rad2_2 * (2*m1_2+m2_2-m2_2*cos(2*ang1_2-2*ang2_2))));
  //3
  float ang1_a_3 = ((( -g * (2 * m1_3 + m2_3) * sin(ang1_3)) + (-m2_3 * g * sin(ang1_3-2*ang2_3)) + 
  (-2*sin(ang1_3-ang2_3)*m2_3) * (ang2_v_3*ang2_v_3*rad2_3+ang1_v_3*ang1_v_3*rad1_3*cos(ang1_3-ang2_3))) / 
  (rad1_3 * (2*m1_3+m2_3-m2_3*cos(2*ang1_3-2*ang2_3))));

  float ang2_a_3 = (((2 * sin(ang1_3-ang2_3)) * (((ang1_v_3*ang1_v_3*rad1_3*(m1_3+m2_3))) + 
  (g * (m1_3 + m2_3) * cos(ang1_3)) + (ang2_v_3*ang2_v_3*rad2_3*m2_3*cos(ang1_3-ang2_3)))) / 
  (rad2_3 * (2*m1_3+m2_3-m2_3*cos(2*ang1_3-2*ang2_3))));
  //4
  float ang1_a_4 = ((( -g * (2 * m1_4 + m2_4) * sin(ang1_4)) + (-m2_4 * g * sin(ang1_4-2*ang2_4)) + 
  (-2*sin(ang1_4-ang2_4)*m2_4) * (ang2_v_4*ang2_v_4*rad2_4+ang1_v_4*ang1_v_4*rad1_4*cos(ang1_4-ang2_4))) / 
  (rad1_4 * (2*m1_4+m2_4-m2_4*cos(2*ang1_4-2*ang2_4))));

  float ang2_a_4 = (((2 * sin(ang1_4-ang2_4)) * (((ang1_v_4*ang1_v_4*rad1_4*(m1_4+m2_4))) + 
  (g * (m1_4 + m2_4) * cos(ang1_4)) + (ang2_v_4*ang2_v_4*rad2_4*m2_4*cos(ang1_4-ang2_4)))) / 
  (rad2_4 * (2*m1_4+m2_4-m2_4*cos(2*ang1_4-2*ang2_4))));
  //5
  float ang1_a_5 = ((( -g * (2 * m1_5 + m2_5) * sin(ang1_5)) + (-m2_5 * g * sin(ang1_5-2*ang2_5)) + 
  (-2*sin(ang1_5-ang2_5)*m2_5) * (ang2_v_5*ang2_v_5*rad2_5+ang1_v_5*ang1_v_5*rad1_5*cos(ang1_5-ang2_5))) / 
  (rad1_5 * (2*m1_5+m2_5-m2_5*cos(2*ang1_5-2*ang2_5))));

  float ang2_a_5 = (((2 * sin(ang1_5-ang2_5)) * (((ang1_v_5*ang1_v_5*rad1_5*(m1_5+m2_5))) + 
  (g * (m1_5 + m2_5) * cos(ang1_5)) + (ang2_v_5*ang2_v_5*rad2_5*m2_5*cos(ang1_5-ang2_5)))) / 
  (rad2_5 * (2*m1_5+m2_5-m2_5*cos(2*ang1_5-2*ang2_5))));
  //6
  float ang1_a_6 = ((( -g * (2 * m1_6 + m2_6) * sin(ang1_6)) + (-m2_6 * g * sin(ang1_6-2*ang2_6)) + 
  (-2*sin(ang1_6-ang2_6)*m2_6) * (ang2_v_6*ang2_v_6*rad2_6+ang1_v_6*ang1_v_6*rad1_6*cos(ang1_6-ang2_6))) / 
  (rad1_6 * (2*m1_6+m2_6-m2_6*cos(2*ang1_6-2*ang2_6))));

  float ang2_a_6 = (((2 * sin(ang1_6-ang2_6)) * (((ang1_v_6*ang1_v_6*rad1_6*(m1_6+m2_6))) + 
  (g * (m1_6 + m2_6) * cos(ang1_6)) + (ang2_v_6*ang2_v_6*rad2_6*m2_6*cos(ang1_6-ang2_6)))) / 
  (rad2_6 * (2*m1_6+m2_6-m2_6*cos(2*ang1_6-2*ang2_6))));
  



  image(tipdraw, 0, 0);
  stroke(255);
  strokeWeight(5);
  
  translate (cx, cy);
  float x1 = rad1 * sin(ang1);
  float y1 = rad1 * cos(ang1);
  
  float x2 = x1 + rad2 * sin(ang2);
  float y2 = y1 + rad2 * cos(ang2);
  
  float x1_2 = rad1_2 * sin(ang1_2);
  float y1_2 = rad1_2 * cos(ang1_2);
  
  float x2_2 = x1_2 + rad2_2 * sin(ang2_2);
  float y2_2 = y1_2 + rad2_2 * cos(ang2_2);
  
  float x1_3 = rad1_3 * sin(ang1_3);
  float y1_3 = rad1_3 * cos(ang1_3);
  
  float x2_3 = x1_3 + rad2_3 * sin(ang2_3);
  float y2_3 = y1_3 + rad2_3 * cos(ang2_3);
  
  float x1_4 = rad1_4 * sin(ang1_4);
  float y1_4 = rad1_4 * cos(ang1_4);
  
  float x2_4 = x1_4 + rad2_4 * sin(ang2_4);
  float y2_4 = y1_4 + rad2_4 * cos(ang2_4);
  
  float x1_5 = rad1_5 * sin(ang1_5);
  float y1_5 = rad1_5 * cos(ang1_5);
  
  float x2_5 = x1_5 + rad2_5 * sin(ang2_5);
  float y2_5 = y1_5 + rad2_5 * cos(ang2_5);
  
  float x1_6 = rad1_6 * sin(ang1_6);
  float y1_6 = rad1_6 * cos(ang1_6);
  
  float x2_6 = x1_6 + rad2_6 * sin(ang2_6);
  float y2_6 = y1_6 + rad2_6 * cos(ang2_6);
      
  fill(66, 135, 245);
  ellipse(x2, y2, m2, m2);
  
  ang1_v += ang1_a;
  ang2_v += ang2_a;
  ang1 += ang1_v;
  ang2 += ang2_v;
  
  fill(66, 245, 221);
  ellipse(x2_2, y2_2, m2_2, m2_2);
  
  ang1_v_2 += ang1_a_2;
  ang2_v_2 += ang2_a_2;
  ang1_2 += ang1_v_2;
  ang2_2 += ang2_v_2;
  
  fill(64, 245, 97);
  ellipse(x2_3, y2_3, m2_3, m2_3);
  
  ang1_v_3 += ang1_a_3;
  ang2_v_3 += ang2_a_3;
  ang1_3 += ang1_v_3;
  ang2_3 += ang2_v_3;
  
  fill(177, 59, 245);
  ellipse(x2_4, y2_4, m2_4, m2_4);
  
  ang1_v_4 += ang1_a_4;
  ang2_v_4 += ang2_a_4;
  ang1_4 += ang1_v_4;
  ang2_4 += ang2_v_4;
  
  fill(250, 55, 104);
  ellipse(x2_5, y2_5, m2_5, m2_5);
  
  ang1_v_5 += ang1_a_5;
  ang2_v_5 += ang2_a_5;
  ang1_5 += ang1_v_5;
  ang2_5 += ang2_v_5;
  
  fill(252, 193, 53);
  ellipse(x2_6, y2_6, m2_6, m2_6);
  
  ang1_v_6 += ang1_a_6;
  ang2_v_6 += ang2_a_6;
  ang1_6 += ang1_v_6;
  ang2_6 += ang2_v_6;
  
   tipdraw.endDraw();
}
