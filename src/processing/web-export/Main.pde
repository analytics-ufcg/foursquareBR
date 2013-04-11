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
class ChartData {
  float maxValue = 3.40282347E+38;
  float minValue = -3.40282347E+38;
  HashMap<Integer,ChartItem> data = new HashMap<Integer,ChartItem>();
  float[] max = new float[]{minValue,minValue,minValue,minValue,minValue};
  float[] min = new float[]{maxValue,maxValue,maxValue,maxValue,maxValue};

  void addData(int id, String nome, String regiao, float[] metricas) {
    ChartItem item = new ChartItem(id, nome, regiao, metricas);
    data.put(id, item);


    // Update MAX and MIN values
    for (int met = 0; met<metricas.length;met++){
      min[met] = (metricas[met] < min[met]) ? metricas[met] : min[met];
      max[met] = (metricas[met] > max[met]) ? metricas[met] : max[met];
    }
  }
  
  void ChartData(){
    for (int i = 0; i<5;i++){
      max[i] = minValue;
      min[i] = maxValue;
    }
  }
  
  int getSize(){
    return data.size();
  }

  void removeAllData() {
    data.clear();
    for (int i = 0; i<5;i++){
      max[i] = minValue;
      min[i] = maxValue;
    }
  }

  ChartItem getItemById(int id) {
    return data.get(int(id));
  }

  int getIndexById(int id) {
    int index = -1;
    for (Integer itemId : data.keySet()) {
      index++;
      if (itemId == id)
        break;
    }
    return index;
  }
  
  ChartItem getItemByNome(String nome){
    ChartItem result = null;
    
    for (ChartItem item:data.values()){
      if (item.getNome().equals(nome)){
        result = item;
      }
    }
    return result;
  }

  int getIdByIndex(int index) {
    int id = -1;
    if (index >= 0 && index < getSize()) {
      for (Integer itemId : data.keySet()) {
        if (index == 0) {
          id = itemId;
          break;
        }
        index--;
      }
    }
    return id;
  }

  ArrayList<Integer> getAllIds() {
    ArrayList<Integer> ids = new ArrayList<Integer>();
    for (Integer itemId : data.keySet()) {
      ids.add(itemId);
    }
    return ids;
  }
  
  float[] getMaxs(){
    return this.max;
  }
  
  float[] getMins(){
    return this.min;
  }

}

class ChartItem {

   String nome;
   String regiao;
   PVector point;
   int id;
   
   float[] metricas;

  ChartItem(int id, String nome, String regiao, float[] metricas) {
    this.point = point;
    this.id = id;
    this.nome = nome;
    this.regiao = regiao;
    this.metricas = metricas;
  }

  PVector getPoint() {
    return point;
  }

  int getId() {
    return id;
  }
  
  String getNome() {
    return this.nome;
  }
  
  String getRegiao(){
    return this.regiao;
  }
  
  float[] getMetricas(){
    return this.metricas;
  }

  color getColor() {
    color result;
    switch(this.regiao){
      case "norte":
        result = color(30,163,35);
        break;
      case "nordeste":
        result = color(230,143,1);
        break;
      case "sudeste":
        result = color(211,56,0);
        break;
      case "centro-oeste":
        result = color(250,245,40);
        break;
      case "sul":
        result = color(34,140,226);
        break;
      default:
        result = #800000;
        break;
    }
    
    return result;
  }

  


  boolean equals(Object obj) {
    if (this == obj)
      return true;
    if (obj == null)
      return false;
    if (getClass() != obj.getClass())
      return false;
    ChartItem other = (ChartItem) obj;
    if (id != other.id)
      return false;
    if (point == null) {
      if (other.point != null)
        return false;
    } else if (!point.equals(other.point))
      return false;
    return true;
  }

  int compareTo(ChartItem o) {
    return this.getId() - o.getId();
  }

  String toString() {
    return "Cidade: " + this.point.x + " - " + this.point.y;
  }
}


class Cidade {
  
  ArrayList<String> campos = new ArrayList<String>();
  ArrayList<String> valores = new ArrayList<String>();
  
  void setValores(String[] valores){ 
    for (String valor:valores){
      this.valores.add(valor);
    }
  }
  
  void setCampos(String[] campos){    
    for (String campo:campos){
      this.campos.add(campo);
    }
  }
  
  String getValor(String campo){
    return valores.get(campos.indexOf(campo));
  }

}
class ManchClass {
 String manchete, informacao;
 PFont font;
 int tamanhoFonte;

 
 ManchClass(String manchete, String informacao){
    this.manchete = manchete;
    this.informacao = informacao;
 } 
  
public String getManchete()
{
   return manchete; 
}
public String getInformacao()
{
   return informacao; 
}

 
 
 }


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


class Mapa {
  
  float myOriginX, myOriginY;
  Integer myHeight,myWidth;
  
  float size;
  ArrayList<String> cidadesClicadas;
  String cidadeOnHover;

  PImage mapaBrasilImagem;
  
  Mapa(float originX, float originY, int newWidth, int newHeight){
    this.myOriginX = originX;
    this.myOriginY = originY;
    this.myWidth = newWidth;
    this.myHeight = newHeight;
    this.size = 6;
    
    cidadesClicadas = new ArrayList<String>();
  }
  
  
 
  void setUp(PImage mapa) {
    cidadeOnHover = "";
    mapaBrasilImagem = mapa;
  }


  public void doDraw() {
    fill(255);
    rect(myOriginX, myOriginY, myWidth, myHeight);
    image(mapaBrasilImagem, myOriginX, myOriginY, myWidth, myHeight);
    noStroke();
    for (Cidade cid:cidades){
      exibeCidadeNoMapa(cid);
    }
  }
  
  void exibeCidadeNoMapa(Cidade cidade) {
    
    float relativeX = this.myOriginX + ((float(cidade.getValor("porctX"))/100)*myWidth);
    float relativeY = this.myOriginY + ((float(cidade.getValor("porctY"))/100)*myHeight);
    float plotSize;
    if (cidadesClicadas.contains(cidade.getValor("municipios"))) {
      highlightCidade(cidade);
    }else{
      fill(255,255,0, 200);
      plotSize = this.size;
      ellipse(relativeX, relativeY, plotSize, plotSize);
    }
    if(cidade.getValor("municipios").equals(cidadeOnHover)){
      plotNomeCidade(cidade.getValor("municipios"), relativeX, relativeY);
      highlightCidade(cidade);
    }
    
    
  }
  
  void highlightCidade(Cidade cidade){
      float relativeX = this.myOriginX + ((float(cidade.getValor("porctX"))/100)*myWidth);
      float relativeY = this.myOriginY + ((float(cidade.getValor("porctY"))/100)*myHeight);
      cursor(12);
      fill(0, 255, 0, 250);
      ellipse(relativeX, relativeY, this.size*2, this.size*2);
  }
  
  void plotNomeCidade(String nome, float relativeX, float relativeY){
      //fill(color(255, 255, 255), 160);
      fill(0);
      textSize(20);
      textAlign(RIGHT);
      text(nome, relativeX + 17, relativeY - 20);
  }
  
  boolean sobreposicaoCirculo(float x, int y, float diameter) {
    float disX = x - mouseX;
    float disY = y - mouseY;
    if (sqrt(sq(disX) + sq(disY)) < diameter / 2) {
      return true;
    } else {
      return false;
    }
  }
  
  String clickCidade(){
    if (!cidadesClicadas.contains(cidadeOnHover)){      
      cidadesClicadas.add(cidadeOnHover);
    }else{
      cidadesClicadas.remove(cidadeOnHover);
    }
   return cidadeOnHover; 
  }
  
  String hoverCidade(){
    Cidade cidade = getCidadeUnderMouse();
    //faz hover aqui
    if (cidade != null && !(cidade.getValor("municipios").equals(cidadeOnHover)) ){
      cursor(HAND);
      cidadeOnHover = cidade.getValor("municipios");
    }else if(cidade == null){
      cursor(ARROW);
      cidadeOnHover = "";
    }else{
      cursor(HAND);
    }
    doDraw();
    return cidadeOnHover;
  }
  
  Cidade getCidadeUnderMouse(){
    Cidade retorno = null;
    for (Cidade cid:cidades){
      if (mouseOverCidade(cid)){
        retorno = cid;
      }        
    }
    return retorno;
  }
  
  boolean mouseOverCidade(Cidade cidade){
    float relativeX = this.myOriginX + ((float(cidade.getValor("porctX"))/100)*myWidth);
    float relativeY = this.myOriginY + ((float(cidade.getValor("porctY"))/100)*myHeight);
    if (sobreposicaoCirculo(relativeX, relativeY, this.size)) {
      return true;
    }else{
      return false;
    }
  }
  
  boolean isMouseOver() {
    return (mouseX >= myOriginX
        && mouseX <= myOriginX + myWidth
        && mouseY >= myOriginY && mouseY <= myOriginY
        + myHeight);
  }
}

class PCoord {
  
  ChartData data;
  //ArrayList<Cidade> cidades = new ArrayList<Cidade>();  
  
  ArrayList<String> cidadesSelecionadas = new ArrayList<String>();  
  
  int myWidth;
  int myHeight;
  int myXOrigin;
  int myYOrigin;

  float[] xLabels;
  float xLabelYOrigin;

  final int X_AXIS = 0;
  final int Y_AXIS = 1;
  final int FACTOR_AXIS = 2;

  float plotX1, plotY1;
  float plotX2, plotY2;

  float xMin, xMax, yMin, yMax;

  String[] campos = { "cobertura", "atualidade", "diversidade", "atividade", "densidade" };
  String[] visualizacaoCampos = {"cpCobertura.png", "cpAtualidade.png", "cpDiversidade.png", "cpAtividade.png", "cpDensidade.png"};
  String[] fatores = { "populacao", "prop.mulheres", "IFDM", "IDHM", "homicidios", "PIB", "per.capta"};
  int xAttributeIndex, yAttributeIndex, factorAttributeIndex;

  float labelSize;
  float yLabelXOrigin;

  float legendX1, legendY1;
  float legendX2, legendY2;
  float notesX1, notesX2;
  float legendPadding;
  float legendPartitionSize;
  float littleClusterSize;

  float xInPixels, yInPixels, sizeInPixels;

  float valueDivisions = 5;
  float valueSize;
  float gridGrayColor;

  int numberOfCities;
  int mouseOverClusterId;
  int clickedCityId;

  float maxPointSize;
  float minPointSize;

  String textNote;

  PCoord(int xOrigin, int yOrigin, int newWidth, int newHeight) {
    myXOrigin = xOrigin;
    myYOrigin = yOrigin;
    myWidth = newWidth;
    myHeight = newHeight;
    data = new ChartData();

  }
  
  void addCidade(Cidade cidade){
    cidades.add(cidade);
  }
  
  void selectCidade(String nome){
    if (!cidadesSelecionadas.contains(nome)){      
      cidadesSelecionadas.add(nome);
    }else{
      cidadesSelecionadas.remove(nome);
    }  
  }

  void setUp() {
    
    xLabelYOrigin = myYOrigin + (myHeight * (float) 0.94);
       
    xLabels = new float[5];
    float div = myWidth/5;
    for (int lab = 0; lab<xLabels.length; lab++){
      float xLabel = (lab*div) + (div/2);
      xLabels[lab] = myXOrigin + xLabel;
    }
    
    

    // X Corners of the plot
    plotX1 = myXOrigin + (myWidth * (float) 0.07);
    plotX2 = myXOrigin + (myWidth * (float) 0.80);

    // Legend
    legendPadding = myWidth * (float) 0.0075;
    legendX1 = myXOrigin + (myWidth * (float) 0.81);
    legendX2 = myXOrigin + (myWidth * (float) 0.99);

    // Plot
    plotY1 = myYOrigin + (myHeight * (float) 0.10);
    plotY2 = myYOrigin + (myHeight * (float) 0.90);

    // Label
    labelSize = myWidth / 57;
    
    yLabelXOrigin = myXOrigin + (myWidth * (float) 0.03);

    // FIXED NUMBER OF CLUSTER
    numberOfCities = 15;

    // No Cluster selected
    mouseOverClusterId = -1;
    
    // No Cluster chosen
    clickedCityId = -1;

    // Legend (starts in the top and goes to the bottom of the plot)
    legendY1 = plotY1;
    legendY2 = plotY2;
    legendPartitionSize = (legendY2 - legendY1) / numberOfCities;
    littleClusterSize = (legendX2 - legendX1) / 5;

    /*
     * Values of the plot
     */
    // Value Size
    valueSize = myWidth / 63;

    gridGrayColor = 210;
    
    xAttributeIndex = 0;
    yAttributeIndex = 1;
    factorAttributeIndex = 0;

    /*
     * Point Size
     */
    maxPointSize = ((plotX2 - plotX1) + (plotY2 - plotY1) / 2) * (float) 0.15;
    minPointSize = ((plotX2 - plotX1) + (plotY2 - plotY1) / 2) * (float) 0.025;

  }

  void doDraw() {
    
    if (data.getSize() > 0) {
      drawAxisLabels();

      // Draw Values by axis
      drawAxis();

      // Legend
      //drawLegend();

      // Points
      drawDataPoints();

      // Notes
      // drawNotes();

      // Highlight Cluster (Hover query)
      cityHighlights();

      // Draw Axis Label Tooltips
      //drawTooltipAxis();
      
      noLoop();
    } else {
      updatePlot();
    }
  }

  void cityHighlights() {
    //if (cidadesSelecionadas.size() > 0) {
      for (String cid : cidadesSelecionadas){
        highlightCity(cid);
      }
    //}
    //if (mouseOverClusterId != -1) {
      //highlightAndTooltipCluster(mouseOverClusterId);
    //}
  }


  int getclickedCityId() {
    return clickedCityId;
  }


  void isMousePressed() {
    if (isMouseOver() && mouseButton == LEFT) {
      println("dentro do grafico");
      clickedCityId = mouseOverClusterId;
    }
  }


  void wasMouseMoved() {
    if (isMouseOver()) {
      //mouseOverClusterId = getClusterInPlot(mouseX, mouseY);
      
    }
  }


  boolean isMouseOver() {
    return (mouseX >= myXOrigin
        && mouseX <= myXOrigin + myWidth
        && mouseY >= myYOrigin && mouseY <= myYOrigin
        + myHeight);
  }

/*
  void highlightAndTooltipCluster(int clusterId) {
    String tooltip;
    ChartItem clusterItem = ChartData.getItemById(clusterId);

    highlightCluster(clusterId);

    // Draw ToolTip
    textSize(12); // Sufficiently far from the text() call so that
                // processing has time to set it before drawing

    tooltip = fatores[factorAttributeIndex]+": " + String.valueOf(clusterItem.getSize());

    fill(50, 100);
    noStroke();
    rectMode(CENTER);
    rect(xInPixels + sizeInPixels / (float) 1.2, yInPixels
        - sizeInPixels / (float) 1.4, textWidth(tooltip)
        * (float) 1.2, 20, 5);
    fill(255);
    textAlign(CENTER, CENTER);
    text(tooltip, xInPixels + sizeInPixels / (float) 1.2,
        yInPixels - sizeInPixels / (float) 1.4);

//    textNote = getClusterTextNote(clusterId);
  }
  */

  void highlightCity(String cidadeNome) {
    ChartItem cidadeItem = data.getItemByNome(cidadeNome);
    float[] points = new float[5];
    float newPointSize = 20;
    float newLineWeight = 10;
    float newAlpha = 150;
    
    noStroke();
    points = drawPoints(cidadeItem, newPointSize, cidadeItem.getColor(), newAlpha);
    drawLines(points, newLineWeight, cidadeItem.getColor(), newAlpha);
    stroke(0);
  }

/*
  void drawTooltipAxis() {
    int isOverLabel = isOverWhichLabel(mouseX, mouseY);
    if (isOverLabel != -1) {
      String tooltip = "Click to change the\naxis attribute";

      textAlign(CENTER, CENTER);
      textSize(12); // Sufficiently far from the text() call so
                  // that processing has time to set it before
                  // drawing

      float tooltipX = mouseX + 35;
      float tooltipY = mouseY - 35;

      fill(35, 100);
      strokeWeight((float) 1);
      rectMode(CENTER);
      rect(tooltipX, tooltipY, textWidth(tooltip)
          * (float) 1.2, 40, 5);

      textLeading(15);
      fill(255);
      text(tooltip, tooltipX, tooltipY);

      // Draw note about the attribute
//      if (isOverLabel == X_AXIS) {
//        textNote = getAttributeTextNote(xAttributeIndex);
//      } else {
//        textNote = getAttributeTextNote(yAttributeIndex);
//      }
    }
  }
*/

  void updatePlot() {
    // Removes the plot data
    if (data.getSize()>0){
      data.removeAllData();
    }
    // Remove the clusters selection and click
    clickedCityId = -1;
    mouseOverClusterId = -1;

    // Update the plot data
    for (int i = 0; i < cidades.size(); i++) {
      Cidade cidade = cidades.get(i);
      float[] metricas = {float(cidade.getValor(campos[0])), float(cidade.getValor(campos[1])), float(cidade.getValor(campos[2])), float(cidade.getValor(campos[3])), float(cidade.getValor(campos[4]))};
      data.addData(i, cidade.getValor("municipios"), cidade.getValor("cultura"), metricas);
    }
    
    // Re-Draw...
    loop();
  }
 
/*
  int getClusterInPlot(int x, int y) {

    int cidadeId = -1;
    float yInPixels, radiusInPixels;
    double dist, smallerRadius = Double.MAX_VALUE;
    ChartItem cidadeItem;
    for (Integer id : data.getAllIds()) {
      cidadeItem = data.getItemById(id);
      yInPixels = getPointYInPixels(clusterItem.getPoint().y);
      radiusInPixels = getPointSizeInPixels(clusterItem.getSize()) / 2;

      // Distance
      dist = Math.sqrt(Math.pow(x - xInPixels, 2)
          + Math.pow(y - yInPixels, 2));

      if (dist <= radiusInPixels) {
        // Select the cluster with smaller radius that the mouse is over
        if (radiusInPixels < smallerRadius) {
          clusterId = id;
          smallerRadius = radiusInPixels;
        }
      }
    }

    return (clusterId);
  }
  */
/*
  int getClusterInLegend(int x, int y) {
    int clusterId = -1, clusterIndex;

    if (x > legendX1
        && x < legendX2
        && y > legendY1
        && y < legendY2
        && (y - legendY1) <= (ChartData.getSize() * legendPartitionSize)) {
      clusterIndex = ((int) Math.ceil((y - legendY1)
          / (double) legendPartitionSize)) - 1;
      clusterId = ChartData.getIdByIndex(clusterIndex);
    }

    return (clusterId);
  }
  */
/*
  void drawNoPlot() {
    noStroke();
    fill(220);
    rectMode(CORNER);
    rect(myXOrigin + 15, myYOrigin + 15, myWidth - 30,
        myHeight - 30, 50);
    fill(255);

    String noTag = "No cities selected...";
    textSize(myHeight / 15);
    textAlign(CENTER, CENTER);
    text(noTag, myXOrigin + myWidth / 2, myYOrigin + myHeight / 2);
    textAlign(CENTER, CENTER);
  }
  */

  void drawAxisLabels() {
    fill(0);
    
    for (int lab = 0; lab<xLabels.length;lab++){
      //textSize(labelSize);
      //textAlign(CENTER, CENTER);
      //textSize(12);
      //text(visualizacaoCampos[lab], xLabels[lab], xLabelYOrigin+20);
      PImage img = loadImage(visualizacaoCampos[lab]);
      imageMode(CENTER);  
      image(img,  xLabels[lab], xLabelYOrigin+30);
      imageMode(CORNER);
    }
  }

  void drawAxis() {
    
    stroke(gridGrayColor);
    strokeWeight((float) 1);
    
    textAlign(CENTER);
    
    float[] max = data.getMaxs();
    float[] min = data.getMins();
    
    textSize(12);
    text("Mín", xLabels[0]-20, plotY2);
    text("Máx", xLabels[0]-20, plotY1);

    for (int lab = 0; lab < xLabels.length; lab++) {
      line(xLabels[lab],plotY1, xLabels[lab], plotY2);
      
      //text(max[lab], (xLabels[lab]), plotY1-10);
      //text(min[lab], (xLabels[lab]), plotY2+20);
    }
    
 }
  

  void drawDataPoints() {
    ChartItem cidade;
    ArrayList<Integer> clusterIds = data.getAllIds();
    
    float[] cidadeLabelsPoints = new float[5];
    float pointSize = 10;
    float lineSize = 2;
    float normalAlpha = 50;

    for (int i = 0; i < clusterIds.size(); i++) {
      noStroke();
      cidade = data.getItemById(clusterIds.get(i));

      color c = cidade.getColor();
      cidadeLabelsPoints = drawPoints(cidade, pointSize, c, normalAlpha);
      drawLines(cidadeLabelsPoints, lineSize, c, normalAlpha);
    }
    
    //fill(0);
  }
  
  float[] drawPoints(ChartItem cidade, float size, color grayColor, float a){
    ellipseMode(CENTER);
    float[] cidadeLabelsPoints = new float[5];
    for (int lab = 0; lab<xLabels.length;lab++){
      float y = getPointYInPixels(cidade.getMetricas()[lab], data.getMins()[lab], data.getMaxs()[lab]);
      cidadeLabelsPoints[lab] = y;
      fill(grayColor, a);
      
      ellipse(xLabels[lab], y, size, size);
    }
    
    return cidadeLabelsPoints;
  }
  
  void drawLines(float[] cidadeLabelsPoints, int lineWeight, color grayColor, float a){
    strokeWeight(lineWeight);
    stroke(grayColor,a);
    for (int lab = 1; lab<xLabels.length;lab++){
      line(xLabels[lab-1], cidadeLabelsPoints[lab-1], xLabels[lab], cidadeLabelsPoints[lab]);
    }
    stroke();
    strokeWeight(1);
  }


  float getPointYInPixels(float y, float min, float max) {
    return (map(y, min, max, plotY2, plotY1));
  }
/*
  float getPointSizeInPixels(float size) {
    float finalSize;
    if (ChartData.minSize == ChartData.maxSize) {
      // Exceptional case. The map would return NaN...
      finalSize = map(size, ChartData.minSize - 5,
          ChartData.maxSize + 5, minPointSize, maxPointSize);
    } else {
      finalSize = map(size, ChartData.minSize, ChartData.maxSize,
          minPointSize, maxPointSize);
    }
    return finalSize;
  }
*/
/*
  void drawLegend() {
    noStroke();

    // Names
    textAlign(LEFT);
    textSize(valueSize - 1);

    // Helpful variables
    ArrayList<Integer> clusterIds = data.getAllIds();
    ChartItem cidade;

    for (int i = 0; i < data.getSize(); i++) {

      // ellipse
      clusterItem = ChartData.getItemById(clusterIds.get(i));
      fill(clusterItem.getColor(ChartItem.RED),
          clusterItem.getColor(ChartItem.GREEN),
          clusterItem.getColor(ChartItem.BLUE),
          clusterItem.getColor(ChartItem.ALPHA));
      ellipse(littleClusterX, littleClusterY, littleClusterSize,
          littleClusterSize);

      // Name
      textX = legendX1 + littleClusterSize + (2 * legendPadding);
      textY = littleClusterY + (littleClusterSize / 4);
      fill(0);
      text(getClusterName(clusterIds.get(i)), textX, textY);

    }
  }
  */
  
/*
  String getClusterName(int index) {
    return ChartData.getItemById(index).getNome();
  }
*/

  float getLegendLittleClusterX() {
    return (legendX1 + legendPadding + (littleClusterSize / 2));
  }

  float getLegendLittleClusterY(int index) {
    return (legendY1 + legendPartitionSize * index + (littleClusterSize / 2));
  }

}

