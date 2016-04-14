PImage monImage;

void setup(){
  noFill();
  rectMode(CENTER);
  monImage = loadImage("montagne.jpg");
  surface.setSize(monImage.width,monImage.height);
  background(0);
}

void draw(){
  for(int a=0;a<monImage.width/5;a++){
    for(int b=0;b<monImage.height/5;b++){
      color couleur=monImage.get(a*5,b*5);
      //fill(couleur);
      stroke(couleur);
      float taille=(brightness(couleur)/255)*5;
      rect(a*5+2,b*5+2,taille,taille);
      float x=a*5+5+random(-2,2);
      float y=b*5+5+random(-2,2);
      triangle(x-taille,y-taille,x+taille,y-taille,x,y+taille);
    }
  }
  noLoop();
}
//save("i.png");