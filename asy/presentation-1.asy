if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="presentation-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(0.38cm);
defaultpen(fontsize(9pt));

int fib(int n) {
if (n == 0)
return 0;
else if (n == 1)
return 1;
int fibs[] = {0, 1};
while (fibs.length <= n) {
fibs.push(fibs[fibs.length - 1] + fibs[fibs.length - 2]);
}
return fibs[fibs.length - 1];
}

int rows = 6;

for (int i = 0; i <= rows; ++i) {
pair A = (-i, -i*sqrt(3));
pair B = (3, sqrt(3));
path idk = A -- (A + 0.5*i*B) + 0.5*B;
draw(L = Label(string(fib(i+1)), position = EndPoint), idk, blue+opacity(0.4));
}

for (int i = 0; i < floor(rows/2)+1; ++i) {
pair A = (-rows, -rows*sqrt(3));
pair B = (A + i*(3, sqrt(3)));
if (i != 0)
draw(B + 0.25*(-1, sqrt(3)) -- B + 0.75*(-1, sqrt(3)), red);
if (i != floor(rows/2))
draw(B + 0.25*(1, sqrt(3)) -- B + 0.75*(1, sqrt(3)), red);
}

for (int i = 0; i <= rows; ++i) {
for (int j = 0; j <= i; ++j) {
label(string(choose(i, j)), (j*2 - i, -i*sqrt(3)));
}
}
