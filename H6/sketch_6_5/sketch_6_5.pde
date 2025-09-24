boolean one = false;
boolean two = true;
boolean three = true;
if(one == true && two == true || two == true && three == true){
  
}
if(one && three){
  println("Deze expressie is onwaar, dus dit zie je niet");
}else{
  if( two && three){
    println("Deze expressie is waar");
  }
}
