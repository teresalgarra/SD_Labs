function y = convolucion(x, h)

n1=length(x);
n2=length(h);
nc=n1+n2-1;

x2=zeros(1,nc);
x2(1:n1)=x;

h2=zeros(1,nc);
h2(1:n2)=h;

for n=1:nc;
   for k=1:n;
       v(k)=x2(k)*h2(n-k+1);
   end
   y(n)=sum(v);
end    

figure(2);
subplot(2,2,1);
stem(1:nc,x2);
subplot(2,2,2);
stem(1:nc,h2);
subplot(3,1,3)
stem(1:nc, y);
    
end