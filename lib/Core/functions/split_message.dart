
int splitMessage(Object error) {
  String st = error.toString();
  int range = 0;
  for (int i = 0; i < st.length; i++){
    if (st[i] == ']'){
      range = i + 2;
      break;
    }
  }
  return range;
}