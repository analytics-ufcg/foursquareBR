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
