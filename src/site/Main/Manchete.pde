

class Manchete {
  int myOriginX, myOriginY, cont, posArray = 0, indiceManchete = 0;
  int larguraRetPassaManc = 50, alturaRetPassaManc = 50, espacoEntreRet = 10, larguraRetManc = 460, alturaRetManc = 50, alturaRetInf = 300, shiftAutomatico = 350;
  int x1TrianguloPos;
  PFont font;
  int tamanhoFonte;
  String[] lines;
  ManchClass[] manchetes;
  PImage[] arrayImgManchetes;
  PImage[] arrayImgInformacoes;
  final int TAMANHO_ARRAY = 8;

  Manchete(int originX, int originY) {
    this.myOriginX = originX;
    this.myOriginY = originY;
    this.cont = originY;
    manchetes = new ManchClass[TAMANHO_ARRAY];
    arrayImgManchetes = new PImage[TAMANHO_ARRAY];
    arrayImgInformacoes = new PImage[TAMANHO_ARRAY];
  } 

  boolean ehPosHashTag = true;
  void pegarManchetes(String nomeArquivo)
  {
    String manch = "", informacao = "";
     lines = loadStrings(nomeArquivo);
     for(String line : lines)
    {
       if(line.equals("#") )
       {
         ManchClass m = new ManchClass(manch, informacao);
         manchetes[posArray] = m;
         informacao = "";
        posArray++;
         ehPosHashTag = true;
       }
       else if(ehPosHashTag){
          manch = line;
          ehPosHashTag = false;
       }
       else{
          informacao = informacao + "\n" + line; 
       }
        
    } 
  }
  
  void pegarImagemManchetes()
  {
          arrayImgManchetes[0] = loadImage("Manchete1Tela1.png");
                   // arrayImgManchetes[0] = loadImage("Manchete1Tela2.png");
          arrayImgManchetes[1] = loadImage("Manchete2Tela1.png");
          arrayImgManchetes[2] = loadImage("Manchete3Tela1.png");
          arrayImgManchetes[3] = loadImage("Manchete4Tela1.png");
          arrayImgManchetes[4] = loadImage("Manchete5Tela1.png");
          arrayImgManchetes[5] = loadImage("Manchete6Tela1.png");
          arrayImgManchetes[6] = loadImage("Manchete7Tela1.png");
          arrayImgManchetes[7] = loadImage("Manchete8Tela1.png");

  }
  
  void pegarImagemInformacoes()
  {
          arrayImgInformacoes[0] = loadImage("Informacao1Tela1.png");
          arrayImgInformacoes[1] = loadImage("Informacao2Tela1.png");
          arrayImgInformacoes[2] = loadImage("Informacao3Tela1.png");
          arrayImgInformacoes[3] = loadImage("Informacao4Tela1.png");
          arrayImgInformacoes[4] = loadImage("Informacao5Tela1.png");
          arrayImgInformacoes[5] = loadImage("Informacao6Tela1.png");
          arrayImgInformacoes[6] = loadImage("Informacao7Tela1.png");
          arrayImgInformacoes[7] = loadImage("Informacao8Tela1.png");
  }
  
  
  void setUp(String nomeArquivo)
  {
    pegarManchetes(nomeArquivo);
    pegarImagemInformacoes();
    pegarImagemManchetes();
//    for (int i = 0; i < lines.length; i+=2) {//nao coloquei as informacoes no arquivo
//      ManchClass m = new ManchClass(lines[i], lines[i+1]);
//      manchetes[posArray] = m;
//      posArray++;
//    }
          x1TrianguloPos = myOriginX + larguraRetManc + espacoEntreRet + espacoEntreRet + larguraRetPassaManc;

    
  }
  
  void mudarCursor(float posXCursor, float posYCursor) {
      if(overRect(myOriginX + larguraRetPassaManc + espacoEntreRet, myOriginY, larguraRetManc, alturaRetPassaManc) || overTrianguloEsquerdo() || overTrianguloDireito() )
       {
         cursor(HAND);
       }
       //else
         //cursor(ARROW);
  }
  
  boolean overTrianguloEsquerdo()
  {
     return  ( overRect(myOriginX, myOriginY + 20, 10, 10) || overRect(myOriginX + 10, myOriginY + 15, 10, 20) || overRect(myOriginX + 20, myOriginY + 10, 10, 30) || 
        overRect(myOriginX + 30, myOriginY + 5, 10, 40) || overRect(myOriginX + 40, myOriginY, 10, 50) ) ;
  }
  
  boolean overTrianguloDireito()
  {
      return ( overRect(x1TrianguloPos, myOriginY, 10, 50) || overRect(x1TrianguloPos + 10, myOriginY + 5, 10, 40) || overRect(x1TrianguloPos + 20, myOriginY + 10, 10, 30) ||
                 overRect(x1TrianguloPos + 30, myOriginY + 15, 10, 20) || overRect(x1TrianguloPos + 40, myOriginY + 20, 10, 10) );
  }

  public void doDraw()
  {

    fill(255);
        //noStroke();
    //triangulo direito
    //triangle(myOriginX + larguraRetManc + espacoEntreRet + espacoEntreRet + larguraRetPassaManc, myOriginY, 
              //myOriginX + larguraRetManc + espacoEntreRet + espacoEntreRet + larguraRetPassaManc, myOriginY + 50,
              //myOriginX + larguraRetManc + espacoEntreRet + espacoEntreRet + larguraRetPassaManc + 50, myOriginY + 25);
    PImage botaoDireito = loadImage("botaoDireita.png");
    image(botaoDireito, myOriginX + larguraRetManc + espacoEntreRet + larguraRetPassaManc, myOriginY );
              
    //triangulo esquerdo
    //triangle(myOriginX, myOriginY + 25, myOriginX + larguraRetPassaManc, myOriginY, myOriginX + larguraRetPassaManc, myOriginY + 50);
    PImage botaoEsquerdo = loadImage("botaoEsquerda.png");
    image(botaoEsquerdo, myOriginX, myOriginY );
    
    //se clicou no triangulo direito, triangulo dividido em 5 retangulos
    if( overRect(x1TrianguloPos, myOriginY, 10, 50) || overRect(x1TrianguloPos + 10, myOriginY + 5, 10, 40) || overRect(x1TrianguloPos + 20, myOriginY + 10, 10, 30) ||
                 overRect(x1TrianguloPos + 30, myOriginY + 15, 10, 20) || overRect(x1TrianguloPos + 40, myOriginY + 20, 10, 10) )
   {
      if(indiceManchete == TAMANHO_ARRAY - 1)
      {
         indiceManchete = 0; 
      }
      else
        indiceManchete++;
    }
    
    //se clicou no triangulo esquerdo, triangulo dividido em 5 retangulos
    if( overRect(myOriginX, myOriginY + 20, 10, 10) || overRect(myOriginX + 10, myOriginY + 15, 10, 20) || overRect(myOriginX + 20, myOriginY + 10, 10, 30) || 
        overRect(myOriginX + 30, myOriginY + 5, 10, 40) || overRect(myOriginX + 40, myOriginY, 10, 50) )
    {
       if(indiceManchete == 0)
      {
         indiceManchete = TAMANHO_ARRAY - 1; 
      }
      else
        indiceManchete--;
    }
    
    

    //manchete
    //rect(myOriginX + larguraRetPassaManc + espacoEntreRet, myOriginY, larguraRetManc, alturaRetPassaManc);
    //pos
    //rect(myOriginX + larguraRetManc + espacoEntreRet + espacoEntreRet + larguraRetPassaManc, myOriginY, larguraRetPassaManc, alturaRetManc);
    //pre
   // rect(myOriginX, myOriginY, larguraRetPassaManc, alturaRetManc);
    //informacao
    //rect(myOriginX, myOriginY + alturaRetManc + espacoEntreRet, larguraRetManc + espacoEntreRet + espacoEntreRet + larguraRetPassaManc + larguraRetPassaManc, alturaRetInf);
    
    tamanhoFonte = 12;
    fill(57);
    font = createFont("Ariel", tamanhoFonte);
    textFont(font);

  //passar para a proxima manchete
//  if( overRect(myOriginX + larguraRetManc + espacoEntreRet + espacoEntreRet + larguraRetPassaManc, myOriginY, larguraRetPassaManc, alturaRetManc) )
//  {
//    if(indiceManchete == TAMANHO_ARRAY - 1)
//    {
//       indiceManchete = 0; 
//    }
//    else
//      indiceManchete++;
//  }
  
  
  //passar para manchete anterior
//  if( overRect(myOriginX, myOriginY, larguraRetPassaManc, alturaRetManc) )
//  {
//    if(indiceManchete == 0)
//    {
//       indiceManchete = TAMANHO_ARRAY - 1; 
//    }
//    else
//      indiceManchete--;
//  }

  //concertar o shift a esquerda
    //text(manchetes[indiceManchete].getManchete(), myOriginX + larguraRetPassaManc + espacoEntreRet + espacoEntreRet + shiftAutomatico, myOriginY + (espacoEntreRet * 3));
    //text(manchetes[indiceManchete].getInformacao(), myOriginX + larguraRetPassaManc + espacoEntreRet + espacoEntreRet + shiftAutomatico, myOriginY + alturaRetManc + (espacoEntreRet * 5) );

    image(arrayImgManchetes[indiceManchete], myOriginX + larguraRetPassaManc + espacoEntreRet, myOriginY );
    image(arrayImgInformacoes[indiceManchete], myOriginX + larguraRetPassaManc + espacoEntreRet, myOriginY + alturaRetManc + (espacoEntreRet * 4) );

  
  }

  public boolean overRect(int x, int y, int width, int height) {
      if (mouseX >= x && mouseX <= x + width && mouseY >= y
          && mouseY <= y + height) {
        return true;
      } else {
  
        return false;
      }
  }



  //void draw() {
    //line(150, 25, mouseX, mouseY);
  //}

  void click(float mX, float mY, PCoord grafico) {
    
    //se clicou na manchete, aparece no grafico
    if(overRect(myOriginX + larguraRetPassaManc + espacoEntreRet, myOriginY, larguraRetManc, alturaRetPassaManc))
    {
      
//        int espacoEntreLinhas = 30;
//        println("X: " + mX);
//        println("Y: " + mY);
    
        if (indiceManchete == 0)
        {
          //selectCidade("Salvador");
          //selectCidade("Macapa");
          //selectCidade("Sao Paulo");
          grafico.selectCidade("Salvador");
          //grafico.selectCidade("macapa");
          //grafico.selectCidade("sao paulo");
          //println("cobertura Manchete 1");
        }
        else if (indiceManchete == 1)
        {
          grafico.selectCidade("Salvador");
          //println("cobertura Manchete 2");
        }
    
        else if (indiceManchete == 2)
        {
          //Interior
          grafico.selectCidade("Contagem");
          grafico.selectCidade("Osasco");
          grafico.selectCidade("Sao Goncalo");
          grafico.selectCidade("Guarulhos");
          grafico.selectCidade("Olinda");
          //Capitais
          grafico.selectCidade("Manaus");
          grafico.selectCidade("Sao Paulo");
          //grafico.selectCidade("Porto Alegre");
          grafico.selectCidade("Brasilia");
          grafico.selectCidade("Fortaleza");
          grafico.selectCidade("Rio de Janeiro");
          //println("cobertura Manchete 3");
        }
    
        else if (indiceManchete == 3)
        {
          grafico.selectCidade("Sao Paulo");
          //println("cobertura Manchete 6");
        }
    
        else if (indiceManchete == 4)
        {
          grafico.selectCidade("Olinda");
          //grafico.selectCidade("Fortaleza");
          //grafico.selectCidade("Joao Pessoa");
          //grafico.selectCidade("Salvador");
          //grafico.selectCidade("Aracaju");
          //grafico.selectCidade("Maceio");
    
          //println("cobertura Manchete 7");
        }
    
        else if (indiceManchete == 5)
        {
          grafico.selectCidade("Salvador");
    
          //println("cobertura Manchete 8");
        }
    
        else if (indiceManchete == 6)
        {
          grafico.selectCidade("Macapa");
    
          //println("cobertura Manchete 9");
        }
    
        else if (indiceManchete == 7)
        {
          grafico.selectCidade("Brasilia");
          grafico.selectCidade("Campo Grande");
          grafico.selectCidade("Goiania");
    
          //println("cobertura Manchete 10");
        }
    }
  }
}

