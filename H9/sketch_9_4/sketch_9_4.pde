void setup() {
  size(600, 600);
  background(255);
  
  tekenVierkant(140, 40, 260, 260);
  
}

void tekenVierkant(float x, float y, float breedte, float hoogte) {
  line(x, y, x + breedte, y);            
  line(x + breedte, y, x + breedte, y + hoogte);  
  line(x + breedte, y + hoogte, x, y + hoogte);   
  line(x, y + hoogte, x, y);             
}
