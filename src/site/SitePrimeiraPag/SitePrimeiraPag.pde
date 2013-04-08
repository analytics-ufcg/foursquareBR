/* @pjs preload="hpUfCG.PNG"; */

  PImage hpUfcg;
  int yOrigem,xOrigem;
  String titulo,pergunta1,pergunta2;
  boolean sobreposicaoTexto2 = false;
  boolean sobreposicaoTexto1 = false;
  Button aboutButton;

  void setup() {
    xOrigem = 0;
    yOrigem = 0;
    size(1280,720);
    hpUfcg = loadImage("hpUfCG.PNG");

    titulo = "Raio-x do Foursquare no Brasil";
    pergunta1 = "Como o Brasil adotou e está usando o Foursquare?";
    pergunta2 = "Como as características da população brasileira moldam o Foursquare no Brasil?";
    
    String textAbout = "Detalhes sobre o projeto."
    aboutButton = new Button(width*0.60, height*0.93, 23, textAbout);
    aboutButton.setLinkedHTML("help.html");
   
  }

  
  void mouseClicked() {
    if(sobreposicaoTexto1){
     link("pergunta1.html");
    }
    if(sobreposicaoTexto2){
     link("pergunta2.html");
    }
    aboutButton.click();
  }
  
  void mouseMoved(){
    aboutButton.isOver(mouseX, mouseY);  
  }

  void draw() {
    background(255);
    definirAreaSobreposicao();
    plotarImagens();
    plotarLabels();
    sobreposicaoTexto();
    mudancaCursor();
    aboutButton.doDraw();
  }

  private void definirAreaSobreposicao() {
    sobreposicaoTexto1   = overRect(xOrigem + 365,yOrigem+295,460,32);
    sobreposicaoTexto2  = overRect(xOrigem + 240,yOrigem+355,720,34);

  }

  private void plotarImagens() {
    image(hpUfcg, xOrigem + 980, yOrigem+640);

  }

  private void plotarLabels() {
    textSize(45);
    fill(120);
    text(titulo,xOrigem+270,yOrigem+150);
    fill(0xff3333FF);
    textSize(20);
    text(pergunta1,xOrigem + 365,yOrigem+320);
    text(pergunta2,xOrigem + 240,yOrigem+380);

  }

  private void mudancaCursor() {
    if(!sobreposicaoTexto2  && !sobreposicaoTexto1){
      cursor(ARROW);
    }else{
       cursor(HAND);
    }
 }

  private void sobreposicaoTexto() {
    strokeWeight(2);
    stroke(0xff3333FF);
    if(sobreposicaoTexto1 ){
      cursor(HAND);
      line (xOrigem + 365,yOrigem+325, xOrigem + 815,yOrigem+325);
    }
    if(sobreposicaoTexto2){
      cursor(HAND);
      line (xOrigem + 240,yOrigem+385,xOrigem + 950,yOrigem+385);
    }

  }

  boolean overRect(int x, int y, int width, int height) {
    if (mouseX >= x && mouseX <= x + width && mouseY >= y
        && mouseY <= y + height) {
      return true;
    } else {

      return false;
    }
  }


