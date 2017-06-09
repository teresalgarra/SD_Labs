function xh = visualiza_conv(x,h,n,pas)
% representa gráficamente la convolución
figure();
subplot(321),stem(n,h),title('x(n)')
subplot(322),stem(n,x),title('h(n)')

xh= conv(x,h);
nn = 2*n(1):1:length(xh)+2*n(1)-1;

for t=1:length(nn)
    subplot(312);
    hold off
    stem(n,x,'b');
    hold on
    stem(t-n+min(nn)-1,h,'r');
    axis([min(nn) max(nn) min(min(x,h)) max(max(x,h))]);
    subplot(313)
    stem(nn(1:t), xh(1:t),'k');
    axis([min(nn) max(nn) min(xh) max(xh)]);
    title(sprintf('t=%d',t+min(nn)-1));
    if isnan(pas)
        pause
    else
        pause(pas)
    end

end
end
