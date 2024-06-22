// https://youtu.be/XFbngfbvrto

PImage img;
int cantX = 6;
int cantY = 6;

void setup(){
  size (800,400);
  img = loadImage( "F_11.jpeg");
}

void draw(){
  image (img, 0, 0, 400,400);
dibujarRect(400/cantX, 400/cantY);
distancia(400/cantX, 400/cantY);
}
float distancia(int modX, int modY) {
  return dist(mouseX, mouseY, modX, modY);
  }
  
  void dibujarRect(int modX, int modY){
  for (int i = 0; i<cantX; i++){
    for (int j=0; j<cantY; j++){
     rect (400+i*modX, j*modY, 68,68);
     strokeWeight (2);
         if (distancia(400/cantX, 400/cantY)<508)
      rect (400+i*modX, j*modY, 58,58);
        if (distancia(400/cantX, 400/cantY)<388)
        rect (400+i*modX, j*modY, 50,50);
           if (distancia(400/cantX, 400/cantY)<368)
        rect (400+i*modX, j*modY, 42,42);
              if (distancia(400/cantX, 400/cantY)<348)
        rect (400+i*modX, j*modY, 35,35);
        //
              if (distancia(400/cantX, 400/cantY)>348)
        rect (410+i*modX, 10+j*modY, 58,58);
           if (distancia(400/cantX, 400/cantY)>368)
        rect (418+i*modX, 18+j*modY, 50,50);
        if (distancia(400/cantX, 400/cantY)>388)
        rect (425+i*modX, 25+j*modY, 42,42);
       if (distancia(400/cantX, 400/cantY)>508)
          rect (432+i*modX, 32+j*modY, 35,35);
}
  }
}
