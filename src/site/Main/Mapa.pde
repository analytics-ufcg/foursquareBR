
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

