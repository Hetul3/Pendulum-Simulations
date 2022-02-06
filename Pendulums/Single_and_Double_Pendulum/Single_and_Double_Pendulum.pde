float ran1 = random(PI/2, 3*PI/2);

//from offset to ang2_2 are adjustable values

float offset = 0.002;
int rad1 = 175;
int rad2 = 175;
int rad_2 = 175;
float m1 = 40;
float m2 = 40;
float m_2 = 40;
float ang1 = ran1;
float ang2 = ran1;
float ang_2 = ran1;
float ang1_v = 0;
float ang2_v = 0;
float ang_v_2 = 0;
float g = 1;
float fricon = 0.999;
float sat = 0;
float prevx2 = -1;
float prevy2 = -1;
float prevx_2 = -1;
float prevy_2 = -1;
float cx, cy;
float invisibility = 600;


PGraphics tipdraw;



void setup() {
  size(700, 700);
  cx = width/2;
  cy = rad1 + rad2;
  colorMode(HSB);
  tipdraw = createGraphics(width, height);
  tipdraw.beginDraw();
  tipdraw.background(0);
  tipdraw.endDraw();
}

void draw() {
  
  float ang1_a = ((( -g * (2 * m1 + m2) * sin(ang1)) + (-m2 * g * sin(ang1-2*ang2)) + 
  (-2*sin(ang1-ang2)*m2) * (ang2_v*ang2_v*rad2+ang1_v*ang1_v*rad1*cos(ang1-ang2))) / 
  (rad1 * (2*m1+m2-m2*cos(2*ang1-2*ang2))));
 
  float ang2_a = (((2 * sin(ang1-ang2)) * (((ang1_v*ang1_v*rad1*(m1+m2))) + 
  (g * (m1 + m2) * cos(ang1)) + (ang2_v*ang2_v*rad2*m2*cos(ang1-ang2)))) / 
  (rad2 * (2*m1+m2-m2*cos(2*ang1-2*ang2))));
  
  float ang_a = (-g * sin(ang_2)) / rad_2;


  image(tipdraw, 0, 0);
  stroke(255);
  strokeWeight(5);
  
  translate (cx, cy);
  float x1 = rad1 * sin(ang1);
  float y1 = rad1 * cos(ang1);
  
  float x2 = x1 + rad2 * sin(ang2);
  float y2 = y1 + rad2 * cos(ang2);
  
  float x1_2 = rad_2 * sin(ang_2);
  float y1_2 = rad_2 * cos(ang_2);

    if(frameCount > invisibility) {
  int i = 0;
    fill(i);
    line(0, 0, x1, y1);
    fill(i);
    ellipse(x1, y1, m1, m1);
    fill(i);
    line(x1, y1, x2, y2);
  }
  
 
  fill(25,25,30);
  ellipse(x2, y2, m2, m2);
  
  ang1_v += ang1_a;
  ang2_v += ang2_a;
  ang1 += ang1_v;
  ang2 += ang2_v;
  
  
  //remove the comments if you want to add friction
 /* ang1_v *= fricon;
  ang2_v *= fricon;
  ang_v_2 *= fricon; */
  
  fill(255);
 if(frameCount > invisibility) {
  line(0, 0, x1_2, y1_2);
 }
  ellipse(x1_2, y1_2, m_2, m_2);
  
  
  ang_v_2 += ang_a;
  ang_2 += ang_v_2;
  
  
   tipdraw.beginDraw();  
   tipdraw.translate(cx, cy);
   tipdraw.strokeWeight(2);
   if(frameCount > 1) {
  
   tipdraw.stroke(150, sat, 100);
   tipdraw.line(prevx2, prevy2, x2, y2);
   tipdraw.stroke(0, 30, 200);
   tipdraw.line(prevx_2, prevy_2, x1_2, y1_2);
   
  if(sat < 255) {
    sat += 0.1; 
    if(sat >= 255) {
  sat = 0;
    }
  }
}
   tipdraw.endDraw();
 
   prevx2 = x2;
   prevy2 = y2; 
   prevx_2 = x1_2;
   prevy_2 = y1_2;
}
