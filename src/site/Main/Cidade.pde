

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
