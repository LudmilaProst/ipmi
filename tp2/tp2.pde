//declaracion
int estado;
int contador;
PImage obra, artista, lugar;
float posX, posY;
String texto, texto1, texto2;
PFont fuenteNueva;
int opacidadTexto;

void setup () {
  size (640,480);
  estado = 1;
  contador= 0;
  posX=30;
  posY=400;
    obra=loadImage("electronicsuperhighway.jpg");
    artista=loadImage("Nam June Paik.jpg");
    lugar=loadImage("Lugardondeseencuentra.jpg");
    fuenteNueva=loadFont("CalifornianFB-Bold-25.vlw");
    texto= "Nombre de la obra: \nElectronic Superhighway: Continental (1995).";
    texto1= "Nam June Paik es considerado \nel padre del videoarte y destacado por \n contribuir a redefinir el arte.";
    texto2= "La obra se encuentra en el \nMuseo Smithsonian de Arte Americano.";
    opacidadTexto=255;
}
void draw () {
  textFont(fuenteNueva);
  fill(255);
  contador=contador+1;
   //cambio de estado
  if (contador >=250) {
    estado++;
    contador=0;
  } else {
    contador++;
  } 
  
  //pantalla 1
  if (estado==1) {
  image(obra,0,0, width, height);
  text(texto, posX, posY);  
  }
  
  //transicion 1-2
  else if(estado==2) {
    image(obra,0,0,width,height);
      fill(255,opacidadTexto);
  textSize(map(opacidadTexto, 255, 0, 38, 0));
  text(texto, posX,posY);
  opacidadTexto-=13;
  if (opacidadTexto<=0){
    estado=3;
    posX=30;
    posY=400;
    opacidadTexto=255;
    }
  }
 
  
  //pantalla 2
  else if (estado==3) {
    image(artista,0,0,width, height);
    fill(0);
    text(texto1, posX, posY);
  }
  
  //transicion 2-3
 else if (estado==4) {
    image (artista,0,0,width,height);
    fill(0);
    text(texto1, posX, posY);
    posY -=10;
    if (posY <=0){
      estado++;
      posX=30;
      posY=400;
    }
 }

  //pantalla 3
  else if (estado==5) {
    image(lugar,0,0, width, height);
    text(texto2, posX, posY);
  }
  //transicion de texto2
  else if (estado>=6) {
  image(lugar,0,0, width, height);
  text(texto2,posX,posY);
  posX +=30;
  
  //boton reiniciar
  if(mouseX > 480 && mouseX < 480+130 && mouseY > 30 && mouseY < 30+30) {
    fill (247, 52,59);
  }else{
    fill (255);
  }
   
   rect(480,30,130,30);
  fill(53,234,26);
  textSize(22);
  text("REINICIAR",492,54);
  }
}
  
   void mousePressed (){
   if (estado>=6){
   if (mouseX > 480 && mouseX < 480+130 && mouseY > 30 && mouseY < 30+30) {
     estado=1;
     posX=10;
     posY=400;
     contador=0;
   }
 }
 }
