/* @pjs preload="Brasil.png,HelpDesk.png,cpCobertura.png,cpDensidade.png,cpAtualidade.png,cpDiversidade.png,cpAtividade.png,botaoDireita.png,botaoEsquerda.png,Informacao1Tela1.png,Informacao2Tela1.png,Informacao3Tela1.png,Informacao4Tela1.png,Informacao5Tela1.png,Informacao6Tela1.png,Informacao7Tela1.png,Informacao8Tela1.png,Manchete1Tela1.png,Manchete2Tela1.png,Manchete3Tela1.png,Manchete4Tela1.png,Manchete5Tela1.png,Manchete6Tela1.png,Manchete7Tela1.png,Manchete8Tela1.png"; */


static ArrayList<Cidade> cidades = new ArrayList<Cidade>();  
PCoord grafico;
Mapa mapa;
PImage mapaDoBrasil,help;
Manchete manchete;
Button backButton, aboutButton;
boolean clicouHelp;

void setup()
{
  size(1280,720);
  background(255);
  fill(255);
  noLoop();
  
  clicouHelp = false;
  
  mapaDoBrasil = loadImage("Brasil.png");
  help = loadImage("HelpDesk.png");
    
  mapa = new Mapa(0,height*0.08,689,600);
  grafico = new PCoord(695, height*0.08, 585, 400);
  manchete = new Manchete(695,height*0.7);
  
  String[] reader = loadStrings("coletaSel.csv");
  lerColeta(reader);
 
  mapa.setUp(mapaDoBrasil);
  grafico.setUp();
  //String[] manchetes = loadStrings("abcd.txt");
  manchete.setUp("abcd.txt");
  
  backButton = new Button(width*0.05, height*0.95, 23, "< Voltar");
  backButton.setLinkedHTML("index.html");
  //String textAbout = "Detalhes sobre o projeto."
  //aboutButton = new Button(width*0.35, height*0.93, 23, textAbout);
  //aboutButton.setLinkedHTML("help.html");
}

void draw(){ 
  background(255);
  textSize(26);
  textAlign(CENTER);
  text("Como o Brasil adotou e está usando o Foursquare?", width/2, height*0.05);
  mapa.doDraw();
  grafico.doDraw();
  manchete.doDraw();
  backButton.doDraw();
  //aboutButton.doDraw();
}

void lerColeta(String[] reader) {
  
  String[] campos = reader[0].split(",");  
  
  for (int i = 1; i <reader.length;i++){
    String linha = reader[i];
    Cidade cidade = new Cidade();
    cidade.setCampos(campos);
    cidade.setValores(linha.split(","));
    grafico.addCidade(cidade);
  }
}

void mouseClicked(){
  String cidade = mapa.clickCidade();
  if (!cidade.equals("")) grafico.selectCidade(cidade);
  manchete.click(mouseX, mouseY, grafico);
  backButton.click();
  //aboutButton.click();
  draw(); 

}

void mouseOver(){
  mapa.isMouseOver();
  grafico.isMouseOver();
}

void mouseMoved(){
  mapa.hoverCidade();
  manchete.mudarCursor(mouseX, mouseY);
  backButton.isOver(mouseX, mouseY);
  //aboutButton.isOver(mouseX, mouseY);  
}

void drawHelp(){
  background(50, 100);
}








