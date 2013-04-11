
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
