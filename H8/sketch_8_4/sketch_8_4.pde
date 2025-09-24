
size(700,700);
background(255,255,255);
int xWaarde = 10;
int yWaarde = 10;
int grootte = 10;
for(int i = 0; i < 10; i++){
rect(xWaarde, yWaarde, grootte,grootte);
yWaarde += grootte;
}
xWaarde += xWaarde + grootte;
