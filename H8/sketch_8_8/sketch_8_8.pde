int a = 0;
int b = 1;
int count = 10;
println(a);
println(b);
for (int i = 0; i < count; i++){
int next = a + b;
println(next);
a = b;
b = next;
}
