PImage img;
float tempo = 0, x = 345, y = 190, veloX = 5, veloY = 4, veloY1 = 6, y1=190,tamBola = 30,tamRetaX = 30, tamRetaY = 140;
color cor1 = 0, cor2 = 0;
boolean mudou = false;
int esquerda, direita;

void setup ()
{
  size (690,380);
  background (0);
  
  fill (#0503FF); //faixa amarela cima
  noStroke ();
  rect (0, 0, 690, 30);
  
  fill (255); //faixa branca centro
  noStroke ();
  rect (0, 80, 690, 200);
  
  fill (#0503FF); //faixa amarela baixo
  noStroke ();
  rect (0, 340, 690, 30);
  
  textSize(72);
  fill (#FF2E17); // Texto em Vermelho
  text("PONG CAAD", 20, 160);
  
  textSize(72);
  fill (#FF2E17); // Texto em Vermelho
  text("BR", 190, 240);
  
  textSize(20);
  fill (255); // Texto em Branco
  text("LOADING...", 550, 315);
  
  textSize(20);
  fill (255); // Texto em Branco
  text("@2021 PATRICK inc.", 250, 360);
  
  img = loadImage ("pong.jpg");
  imageMode (CENTER);
  image (img, 550, 180, 200, 200);
}

void draw ()
{
  tempo = tempo + 1;
  
  if (tempo == 200)
  {
    background (255);
    
    textSize(32);
    fill (0); // Texto em Preto
    text("ESCOLHA SEU PERSONAGEM", 132, 40);
    
    textSize(15);
    fill (0); // Texto em Preto
    text("(Clique em uma cor)", 270, 365);
    
    fill (#0503FF); // Quadrado Azul Esquerda
    rectMode (CENTER);
    rect (152, 210, 155, 250);
    textSize(30);
    fill (0); // Texto em preto
    text("BLUE", 115, 215);
    
    fill (#FFCD03); // Quadrado Amarelo Centro
    rectMode (CENTER); 
    rect (345, 210, 155, 250);
    textSize(30);
    fill (0); // Texto em preto
    text("YELLOW", 288, 215);
    
    fill (#FF0B03); // Quadrado Vermelho Direita
    rectMode (CENTER);
    rect (534, 210, 155, 250);
    textSize(30);
    fill (0); // Texto em preto
    text("RED", 505, 215);
  } 
  
  if (tempo >= 400)
  {
    background (255);
    fill (0);
    ellipse (x, y, tamBola, tamBola);
    
    if (x < (width - 25) && veloX == 5)
    {
    x = x + veloX;
    }
    
    else if (x >= (width - 25) && veloX == 5 )
    {
    veloX = -5;
    x = x + veloX;  
    }
    
    else if (x > 25 && veloX == -5)
    {
    x = x + veloX;
    }
    
    else
    {
    veloX =  5;
    x = x + veloX;
    }
    
    if (y < (height - 15) && veloY1 == 6)
    {
    y = y + veloY1;
    }
    
    else if (y >= (height - 15) && veloY1 == 6 )
    {
    veloY1 = -6;
    y = y + veloY1;  
    }
    
    else if (y > 15 && veloY1 == -6)
    {
    y = y + veloY1;
    }
    
    else
    {
    veloY1 =  6;
    y = y + veloY1;
    }
  
   if (x == width - 25) 
    {
    esquerda = esquerda + 1;
    }
    
    if (x == 25) 
    {
    direita = direita + 1; 
    }
    
    textSize(40);
    textAlign(CENTER);
    text(direita, width/2+30, 30);
    text(esquerda, width/2-30, 30);
  
  fill (0); // Linha Preta Vertical
  rect (width/2, 0, 10, 760);
    
  fill (0); // Linha Preta Horizontal
  stroke (1);
  line (0 ,height / 2, 690, height / 2);
  
  fill (cor1);
  noStroke ();
  rect (0, mouseY, tamRetaX, tamRetaY);

  fill (cor2);
  noStroke ();
  rect (690, y1, tamRetaX, tamRetaY);
  
  if (y1 < (height - 70) && veloY == 4)
    {
    y1 = y1 + veloY;
    }
    
    else if (y1 >= (height - 70) && veloY == 4 )
    {
    veloY = -4;
    y1 = y1 + veloY;  
    }
    
    else if (y1 > 70 && veloY == -4)
    {
    y1 = y1 + veloY;
    }
    
    else
    {
    veloY =  4;
    y1 = y1 + veloY;
    }
  }
}

  
void mouseReleased() 
  {
  loop();
  }

void mousePressed() 
{ 
  noLoop();
  
  if (mudou == !true)
  {
  if ((mouseX >= 75 && mouseX <= 229) && (mouseY >= 85 && mouseY <= 335))
  {
    cor1 = color(#0503FF); // Quadrado Azul Esquerda
    cor2 = color(#FF9203); // Oponente Laranja
  }
  
  else if ((mouseX >= 268 && mouseX <= 423) && (mouseY >= 85 && mouseY <= 335))
  {
    cor1 = color(#FFCD03); // Quadrado Amarelo Centro
    cor2 = color(#D81CB6); // Oponente Roxo
  }
  
  else if ((mouseX >= 457 && mouseX <= 611) && (mouseY >= 85 && mouseY <= 335))
  {
    cor1 = color(#FF0B03); // Quadrado Vermelho Direita
    cor2 = color(#28A546); // Oponente Verde
  } 
  
  else
  {
    cor1 = color(0);
    cor2 = color(0);
  } 
  mudou = (true);
  }
} 
