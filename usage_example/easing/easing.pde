/** 
<p><strong>Robert Penner's easing equations demo</strong></p>
<p>all rects take the same time to travel from left to right, but each color
uses a different equation.</p>
<p>click on the applet to reset movement</p>
<p>see source and <a href="http://robertpenner.com/easing/">http://robertpenner.com/easing/</a>  for usage</p>

*/
import penner.easing.*;

int time= 0;
float beginning= 0;
float change = 390;
float duration = 200;

void setup() {
    size(400,450);
    frameRate(30);
    background(0);
}

void draw() {    
    background(0);
 
    fill(140,255,100);
    rect(Linear.easeIn    (time, beginning, change, duration),10,10,10);
    rect(Linear.easeOut   (time, beginning, change, duration),20,10,10);
    rect(Linear.easeInOut (time, beginning, change, duration),30,10,10);

    fill(100,0,100);
    rect(Quad.easeIn     (time, beginning, change, duration),50,10,10);
    rect(Quad.easeOut    (time, beginning, change, duration),60,10,10);
    rect(Quad.easeInOut  (time, beginning, change, duration),70,10,10);
    
    fill(100,100,50);
    rect(Cubic.easeIn    (time, beginning, change, duration),90,10,10);
    rect(Cubic.easeOut   (time, beginning, change, duration),100,10,10);
    rect(Cubic.easeInOut (time, beginning, change, duration),110,10,10);
    
    fill(125,0,255);
    rect(Quart.easeIn    (time, beginning, change, duration),130,10,10);
    rect(Quart.easeOut   (time, beginning, change, duration),140,10,10);
    rect(Quart.easeInOut (time, beginning, change, duration),150,10,10);
    
    fill(0,125,255);
    rect(Quint.easeIn    (time, beginning, change, duration),170,10,10);
    rect(Quint.easeOut   (time, beginning, change, duration),180,10,10);
    rect(Quint.easeInOut (time, beginning, change, duration),190,10,10);
    
    fill(255,0,255);
    rect(Sine.easeIn    (time, beginning, change, duration),210,10,10);
    rect(Sine.easeOut   (time, beginning, change, duration),220,10,10);
    rect(Sine.easeInOut (time, beginning, change, duration),230,10,10);
    
    
    fill(255,0,0);
    rect(Circ.easeIn    (time, beginning, change, duration),250,10,10);
    rect(Circ.easeOut   (time, beginning, change, duration),260,10,10);
    rect(Circ.easeInOut (time, beginning, change, duration),270,10,10);
    
    fill(255,100,0);
    rect(Expo.easeIn    (time, beginning, change, duration),290,10,10);
    rect(Expo.easeOut   (time, beginning, change, duration),300,10,10);
    rect(Expo.easeInOut (time, beginning, change, duration),310,10,10);
    
    fill(100,255,0);
    rect(Back.easeIn    (time, beginning, change, duration),330,10,10);
    rect(Back.easeOut   (time, beginning, change, duration),340,10,10);
    rect(Back.easeInOut (time, beginning, change, duration),350,10,10);
    
    fill(180,255,255);
    rect(Bounce.easeIn    (time, beginning, change, duration),370,10,10);
    rect(Bounce.easeOut   (time, beginning, change, duration),380,10,10);
    rect(Bounce.easeInOut (time, beginning, change, duration),390,10,10);
    
    fill(0,255,255);
    rect(Elastic.easeIn    (time, beginning, change, duration),410,10,10);
    rect(Elastic.easeOut   (time, beginning, change, duration),420,10,10);
    rect(Elastic.easeInOut (time, beginning, change, duration),430,10,10);
    
    if (time < duration) time++;
    
}
void mousePressed() {
    time = 0;    
}
