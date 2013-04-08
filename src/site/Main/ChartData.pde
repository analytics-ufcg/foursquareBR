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
