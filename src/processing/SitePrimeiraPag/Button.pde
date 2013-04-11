
class Button{
  
  float originX, originY, myWidth, myHeight;
  String content, linkedHTML = "";
  
  boolean isMouseOver;
  
  
  Button(float newX, float newY, float newHeight, String content){
    this.originX = newX;
    this.originY = newY;
    this.myWidth  = content.length()* 8.7;
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
    //colorMode(HSB, 100);
    fill(0xff3333FF);
    if (isMouseOver){
      stroke(0xff3333FF);
      line(originX-(myWidth/2), originY+(myHeight/2), originX+(myWidth/2), originY+(myHeight/2));
      noStroke();
      cursor(HAND);
    }else {
      //cursor(ARROW);
    }
    
    textAlign(CENTER, CENTER);
    textSize(20);
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
