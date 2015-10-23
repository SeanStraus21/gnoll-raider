var xpos, ypos, w, h;
xpos = argument0;
ypos = argument1;
w = 32;
h = 16;
for(i=0;i<cjp;i+=1){
  for(i=0;i<cjp;i+=1){
    pchar[i].x = xpos + (i mod 3)*(w) - (i div 3)*(w);
    pchar[i].y = ypos + (i mod 3)*(h) + (i div 3)*(h);
  }
}
