/* @pjs preload="influenciaSemEscolha.png"; */
/* @pjs preload="influenciaAtividadeClicada.png"; */
/* @pjs preload="influenciaDiversidadeClicada.png"; */
/* @pjs preload="influenciaDensidadeClicada.png"; */
/* @pjs preload="densidade.png"; */
/* @pjs preload="diversidade.png"; */
/* @pjs preload="atividade.png"; */
/* @pjs preload="positivaAtividade.png"; */
/* @pjs preload="negativaAtividade.png"; */
/* @pjs preload="negativaDiversidade.png"; */
/* @pjs preload="positivaDensidade.png"; */
/* @pjs preload="negativaDensidade.png"; */
/* @pjs preload="botaoDireita.png"; */
/* @pjs preload="botaoEsquerda.png"; */
/* @pjs preload="manchete1.png"; */
/* @pjs preload="manchete2.png"; */
/* @pjs preload="manchete3.png"; */
/* @pjs preload="label.png"; */
/* @pjs preload="labelAtividade.png"; */
/* @pjs preload="labelDiversidade.png"; */
/* @pjs preload="labelDensidade.png"; */
/* @pjs preload="labelManchete1.png"; */
/* @pjs preload="labelManchete2.png"; */   
/* @pjs preload="labelManchete3.png"; */
/* @pjs preload="labelIC1.png"; */ 
/* @pjs preload="labelIC2.png"; */
/* @pjs preload="labelIC3.png"; */ 

  private PImage semEscolha;
  private int xOrigem;
  private int yOrigem;
  private boolean sobreposicaoAtividade;
  private PImage atividade;
  private  boolean clicado = false;
  private PImage diversidade;
  private boolean sobreposicaoDiversidade;
  private boolean sobreposicaoDensidade;
  private PImage densidade;
  private boolean nMulheres;
  private boolean capital;
  private boolean     propMulheres;
  private boolean rendaPerCapita;
  private boolean pib;
  private boolean idhm;
  private boolean homicidios;
  private boolean ifdm;
  private boolean populacao;
  private int ultimaImagem =0;
  private PImage icAtividade;
  private PImage icDiversidade;
  private PImage icDensidade;
  private boolean atividadePositivo;
  private boolean atividadeNegativo;
  private boolean diversidadeNegativo1;
  private boolean diversidadeNegativo2;
  private boolean densidadePositivo;
  private boolean densidadeNegativo;
  private PImage positivaAtividade;
  private PImage negativaAtividade;
  private PImage negativaDiversidade;
  private PImage positivaDensidade;
  private PImage negativaDensidade;
  private String titulo = "Como as características da população brasileira moldam o Foursquare no Brasil?";
  private String tituloBeta = "Valores dos coeficientes na regressão";
  private PImage botaoDireita;
  private PImage botaoEsquerda;
  private PImage manchete1;
  private PImage manchete2;
  private PImage manchete3;
  private boolean sobreposicaBotaoEsquerdo;
  private boolean sobreposicaBotaoDireito;
  private boolean sobreposicaManchete;
  private int indiceManchetes;
  private ArrayList<PImage> manchetes;
  private String relacaoPositiva;
  private String relacaoNegativa;
  private boolean mancheteClicada = false;
  private PImage label;
  private PImage labelAtividade;
  private PImage labelDiversidade;
  private PImage labelDensidade;
  private PImage labelManchete3;
  private PImage labelManchete2;
  private PImage labelManchete1;
  private PImage labelIC1;
  private PImage labelIC2;
  private PImage labelIC3;
  private boolean sobreposicaoIC;
  
  Button backButton;

  public void setup() {
    xOrigem =50;
    yOrigem = 100;
    size(1280,720);
   
    semEscolha = loadImage("influenciaSemEscolha.png");
    atividade = loadImage("influenciaAtividadeClicada.png");
    diversidade = loadImage("influenciaDiversidadeClicada.png");
    densidade = loadImage("influenciaDensidadeClicada.png");
    icDensidade = loadImage("densidade.png");
    icDiversidade= loadImage("diversidade.png");
    icAtividade= loadImage("atividade.png");
    positivaAtividade = loadImage("positivaAtividade.png");
    negativaAtividade = loadImage("negativaAtividade.png");
    negativaDiversidade = loadImage("negativaDiversidade.png");
    positivaDensidade = loadImage("positivaDensidade.png");
    negativaDensidade = loadImage("negativaDensidade.png");
    botaoDireita = loadImage("botaoDireita.png");
    botaoEsquerda = loadImage("botaoEsquerda.png");
    manchete1 = loadImage("manchete1.png");
    manchete2 = loadImage("manchete2.png");
    manchete3 = loadImage("manchete3.png");
    label = loadImage("label.png");
    labelAtividade = loadImage("labelAtividade.png");
    labelDiversidade = loadImage("labelDiversidade.png");
    labelDensidade = loadImage("labelDensidade.png");
    labelManchete1 = loadImage("labelManchete1.png");
    labelManchete2 = loadImage("labelManchete2.png");
    labelManchete3 = loadImage("labelManchete3.png");
    labelIC1 = loadImage("labelIC1.png");
    labelIC2 = loadImage("labelIC2.png");
    labelIC3 = loadImage("labelIC3.png");
    manchetes = new ArrayList<PImage>();
    manchetes.add(manchete1);
    manchetes.add(manchete2);
    manchetes.add(manchete3);
    indiceManchetes = 0;
    
    backButton = new Button(width*0.05, height*0.95, 23, "< Voltar");
    backButton.setLinkedHTML("index.html");
  
  }

  public void draw() {
    background(255);
    plotaInfluencias();
    sobreposicao();
    alteraCursor();
    retornaUltimaImagem();
    plotaInformacoes();
    backButton.doDraw();
}


  private void plotaInformacoes() {
    fill(0xffCCFFFF,200);
    if(nMulheres){
      plotaInformacao("       Quantidade de mulheres por cidade" );
    }if(capital){
      plotaInformacao("     Observa se a cidade é capital ou não");
    }if(propMulheres){
      plotaInformacao("     Porcentagem de mulheres na população");
    }if(rendaPerCapita){
      plotaInformacao("                 Renda per capita");
    }if(pib){
      plotaInformacao("                             PIB");
    }if(idhm){
      plotaInformacao("Índice de Desenvolvimento Humano Municipal");
    }if(homicidios){
      plotaInformacao("                 Total de homicídios");
    }if(populacao){
      plotaInformacao("                 Total de habitantes");
    }if(ifdm){
      plotaInformacao("Índice FIRJAN de Desenvolvimento Municipal");
    }

  }


  private void sobreposicao() {
    sobreposicaoAtividade   = overRect(xOrigem + 14,yOrigem+83,128,22);
    sobreposicaoDiversidade   = overRect(xOrigem + 14,yOrigem+153,128,22);
    sobreposicaoDensidade   = overRect(xOrigem + 14,yOrigem+219,128,22);
    nMulheres = overRect(xOrigem + 391,yOrigem,198,22);
    capital = overRect(xOrigem + 391,yOrigem+42,198,22);
    propMulheres = overRect(xOrigem + 391,yOrigem+86,198,22);
    rendaPerCapita =  overRect(xOrigem + 391,yOrigem+129,198,22);
    pib  =  overRect(xOrigem + 391,yOrigem+175,198,22);
    idhm =  overRect(xOrigem + 391,yOrigem+224,198,22);
    homicidios =  overRect(xOrigem + 391,yOrigem+266,198,22);
    populacao =  overRect(xOrigem + 391,yOrigem+312,198,22);
    ifdm =  overRect(xOrigem + 391,yOrigem+347,198,22);

    atividadePositivo = overCircle(xOrigem + 610 , yOrigem+15,28);
    atividadeNegativo = overCircle(xOrigem + 610 , yOrigem+145,28);

    diversidadeNegativo1 = overCircle(xOrigem + 610 , yOrigem+60,28);
    diversidadeNegativo2 = overCircle(xOrigem + 610 , yOrigem+103,28);

    densidadePositivo = overCircle(xOrigem + 610 , yOrigem+60,28);
    densidadeNegativo = overCircle(xOrigem + 610 , yOrigem+145,28);
    sobreposicaBotaoEsquerdo = overCircle(xOrigem + 43, yOrigem+524, 52);
    sobreposicaBotaoDireito = overCircle(xOrigem + 643, yOrigem+524, 52);
    sobreposicaManchete = overRect(xOrigem + 80 , yOrigem+490, 529,115);

  }
 

  //TODO Mantequilla, esse eh o metodo para integrar com as machetes
  //TODO Mantequilla, para ultimaImagem = 1, põe a manchete sobre atividade
  //TODO Mantequilla, para ultimaImagem = 2, põe a manchete sobre diversidade
  //TODO Mantequilla, para ultimaImagem = 3, põe a manchete sobre densidade
  private void retornaUltimaImagem() {
    fill(0);
    plotaTextoEBotoesDasManchetes();
    relacaoPositiva = "                  A relação é positiva" ;
    relacaoNegativa = "                  A relação é negativa" ;
    telaDefaultGraficoLinhas();
    if( ultimaImagem == 1){
      image(atividade, xOrigem  , yOrigem);
      image(icAtividade, xOrigem+730  , yOrigem+50);
      plotaTitulos();
      image(positivaAtividade, xOrigem + 599 , yOrigem);
      image(negativaAtividade, xOrigem + 599 , yOrigem+130);
      fill(0xffCCFFFF,200);
      if(atividadePositivo){

        plotaInformacao(relacaoPositiva );
      }
      if (atividadeNegativo ){
        plotaInformacao(relacaoNegativa );
      }

    }

    else if( ultimaImagem == 2){
      image(diversidade, xOrigem  , yOrigem);
      image(icDiversidade, xOrigem+730  , yOrigem+50);
      plotaTitulos();
      image(negativaDiversidade, xOrigem + 599 , yOrigem+45);
      image(negativaDiversidade, xOrigem + 599 , yOrigem+88);
      fill(0xffCCFFFF,200);
      if(diversidadeNegativo1){
        plotaInformacao(relacaoNegativa );
      }
      if (diversidadeNegativo2){
        plotaInformacao(relacaoNegativa );
      }
    }
    else  if(ultimaImagem == 3 ){
      image(densidade, xOrigem  , yOrigem);
      image(icDensidade, xOrigem+730  , yOrigem+50);
      plotaTitulos();

      image(positivaDensidade, xOrigem + 599 , yOrigem+45);
      image(negativaDensidade, xOrigem + 599 , yOrigem+130);
      fill(0xffCCFFFF,200);
      if(densidadeNegativo){
        plotaInformacao(relacaoNegativa );
      }
      if(densidadePositivo){
        plotaInformacao(relacaoPositiva );
      }
    }
    
    else  if( ultimaImagem == 4){
      image(atividade, xOrigem  , yOrigem);
      image(icAtividade, xOrigem+730  , yOrigem+50);
      plotaTitulos();
      image(positivaAtividade, xOrigem + 599 , yOrigem);
      image(negativaAtividade, xOrigem + 599 , yOrigem+130);
      fill(0xffCCFFFF,200);
      if(atividadePositivo){

        plotaInformacao(relacaoPositiva );
      }
      if (atividadeNegativo ){
        plotaInformacao(relacaoNegativa );
      }

    }

    else  if( ultimaImagem ==5){
      image(diversidade, xOrigem  , yOrigem);
      image(icDiversidade, xOrigem+730  , yOrigem+50);
      plotaTitulos();
      image(negativaDiversidade, xOrigem + 599 , yOrigem+45);
      image(negativaDiversidade, xOrigem + 599 , yOrigem+88);
      fill(0xffCCFFFF,200);
      if(diversidadeNegativo1){
        plotaInformacao(relacaoNegativa );
      }
      if (diversidadeNegativo2){
        plotaInformacao(relacaoNegativa );
      }
    }
    else  if(ultimaImagem == 6){
      image(densidade, xOrigem  , yOrigem);
      image(icDensidade, xOrigem+730  , yOrigem+50);
      plotaTitulos();

      image(positivaDensidade, xOrigem + 599 , yOrigem+45);
      image(negativaDensidade, xOrigem + 599 , yOrigem+130);
      fill(0xffCCFFFF,200);
      if(densidadeNegativo){
        plotaInformacao(relacaoNegativa );
      }
      if(densidadePositivo){
        plotaInformacao(relacaoPositiva );
      }
    }
    
    
    plotaManchete();
    plotaLegendas();
  }

  private void plotaLegendas() {
    fill(0);
    textSize(19);
    text("Legenda" ,xOrigem+860  , yOrigem+400);
    
    image(label,xOrigem+710  , yOrigem+410);
    if(sobreposicaoAtividade){
      image(labelAtividade,xOrigem+710  , yOrigem+410);
      
    }
    if(sobreposicaoDiversidade){
      image(labelDiversidade,xOrigem+710  , yOrigem+410);
      
    }
    if(sobreposicaoDensidade){
      image(labelDensidade,xOrigem+710  , yOrigem+410);
      
    }
    if(sobreposicaManchete){
      if(indiceManchetes ==0){
        image(labelManchete1,xOrigem+710  , yOrigem+410);
        
      }
      if(indiceManchetes ==1){
        image(labelManchete2,xOrigem+710  , yOrigem+410);
        
      }if(indiceManchetes ==2){
        image(labelManchete3,xOrigem+710  , yOrigem+410);
        
      }
    }
    sobreposicaoIC = overRect(xOrigem+730  , yOrigem+50,325,300);
    if(sobreposicaoIC){
      if(ultimaImagem == 1 || ultimaImagem ==4){
        image(labelIC1,xOrigem+710  , yOrigem+410);
      }
      if(ultimaImagem == 2 || ultimaImagem ==5){
        image(labelIC2,xOrigem+710  , yOrigem+410);
      }
      if(ultimaImagem == 3 || ultimaImagem ==6){
        image(labelIC3,xOrigem+710  , yOrigem+410);
      }
    }
    
  }

  private void telaDefaultGraficoLinhas() {
    image(semEscolha, xOrigem  , yOrigem);
    plotaTituloPrincipal();
    textSize(16);
    fill(100);
    text("Clique em uma das características do uso do foursquare no Brasil à esquerda" ,xOrigem+90  , yOrigem-10);
    
  }

  private void plotaManchete() {
    image(manchetes.get(indiceManchetes), xOrigem + 80 , yOrigem+490);
    fill(0);
    
  }

  private void plotaTextoEBotoesDasManchetes() {
    fill(0);
    textSize(19);
    text("Destaques" ,xOrigem+280  , yOrigem+470);
    image(botaoEsquerda, xOrigem + 20 , yOrigem+500);
    image(botaoDireita, xOrigem + 620 , yOrigem+500);

  }

  
  public void mouseClicked() {
    mancheteClicada = false;
    if(sobreposicaBotaoDireito){
      if(indiceManchetes==2){
        indiceManchetes= 0;
      }else{
        indiceManchetes++;
      }
    }
    if(sobreposicaBotaoEsquerdo){
      if(indiceManchetes==0){
        indiceManchetes= 2;
      }else{
        indiceManchetes--;
      }
    }
    backButton.click();
  }
  
  void mouseMoved(){
    backButton.isOver(mouseX, mouseY);
  }
  
  private void plotaTitulos() {
    fill(0);
    textSize(16);
    text("Clique em uma das características do uso do foursquare no Brasil à esquerda" ,xOrigem+90  , yOrigem-10);
    plotaTituloPrincipal();
    textSize(20);
    text(tituloBeta,xOrigem+710  , yOrigem+20);

  }

  private void plotaTituloPrincipal() {
    fill(0);
    textSize(27);
    text(titulo,xOrigem+40  , yOrigem-60);

  }

  public boolean overCircle(float x, int y, float diameter) {
    float disX = x - mouseX;
    float disY = y - mouseY;
    if (sqrt(sq(disX) + sq(disY)) < diameter / 2) {
      return true;
    } else {
      return false;
    }
  }

  private void plotaInfluencias() {
    if(!clicado){
      background(255);
      image(semEscolha, xOrigem  , yOrigem);
      ultimaImagem=0;
    }
    if(mousePressed){
      if(sobreposicaoAtividade){
        background(255);
        image(atividade, xOrigem  , yOrigem);
        clicado = true;
        ultimaImagem=1;
      }
      else if(sobreposicaoDiversidade){
        background(255);
        image(diversidade, xOrigem  , yOrigem);
        clicado = true;
        ultimaImagem =2;
      }

      else if(sobreposicaoDensidade){
        background(255);
        image(densidade, xOrigem  , yOrigem);
        clicado = true;
        ultimaImagem = 3;
      }
      else if(sobreposicaManchete){
        background(255);
        clicado = true;
        ultimaImagem = indiceManchetes+1;
      }
    }

  }

  private void plotaInformacao(String informacao) {
    rect(mouseX+10,mouseY-25,340,25,17);
    fill(0);
    textSize(15);
    text(informacao,mouseX+17,mouseY-8 );
  }




private void alteraCursor() {
    cursor(ARROW);
    if(sobreposicaoAtividade || sobreposicaoDiversidade || sobreposicaoDensidade || sobreposicaBotaoEsquerdo || sobreposicaBotaoDireito || sobreposicaManchete){
      cursor(HAND);
    }
   
  }


  public boolean overRect(int x, int y, int width, int height) {
    if (mouseX >= x && mouseX <= x + width && mouseY >= y
        && mouseY <= y + height) {
      return true;
    } else {

      return false;
    }
  }


 

class Button{
  
  float originX, originY, myWidth, myHeight;
  String content, linkedHTML = "";
  
  boolean isMouseOver;
  
  
  Button(float newX, float newY, float newHeight, String content){
    this.originX = newX;
    this.originY = newY;
    this.myWidth  = content.length()* 8;
    this.myHeight = newHeight;
    this.content = content;
    this.isMouseOver = false;    
  }
  
  void doDraw(){
    fill(255);
    noStroke();
    rectMode(CENTER);
    rect(originX, originY, myWidth, myHeight);
    rectMode(CORNER);
    colorMode(HSB, 100);
    if (isMouseOver){
      fill(70, 100, 100);
      cursor(HAND);
    }else {
      fill(0);
      //cursor(ARROW);
    }
    
    textAlign(CENTER, CENTER);
    textSize(18);
    text(content, originX, originY);
    
    colorMode(RGB,255);
    textAlign();
  }
  
  void isOver(float mX, float mY){
    float distX = abs(mX - originX);
    float distY = abs(mY - originY);
    if ( distX < myWidth/2 && distY < myHeight/2){
      isMouseOver = true;
    }else{
      isMouseOver = false;

    }
    doDraw();
  }
  
  boolean click(){
    if (isMouseOver){
        link(linkedHTML);
       return true; 
    }
    return false;
  }
  
  void setLinkedHTML(String html){
    this.linkedHTML = html;
  }
  
}

