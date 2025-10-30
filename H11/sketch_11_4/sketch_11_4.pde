int[] msg = new int[10];

void setup(){
  for(int i = 0; i < msg.length; i++){
    msg[i] = 12 + i * 12;
  }
  
  for(int i = 0; i < msg.length; i++){
    println(msg[i]);
}
}
