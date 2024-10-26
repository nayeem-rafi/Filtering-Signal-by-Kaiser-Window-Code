%% LPF TO BPF KEISER

clc; clear all; clear all;

ws1=0.25*pi;wp1=0.35*pi;
wp2=0.6*pi;ws2=0.65*pi;
ds1=.01; ds2=.01; dp=.05;

del=min([ds1,ds2,dp]);A=-20*log10(del);
dw=min(wp1-ws1,ws2-wp2);

if A>=50
B=0.1102*(A-8.7);
elseif A>=21 && A<=50
B=0.5842*(A-21)^0.4 + 0.07886*(A-21);
else B=0;
end

M=ceil(1+(A-8)/(2.285*dw));
n=0:M-1;a=(M-1)/2;
wc1=(ws1+wp1)/2 ; wc2=(ws2+wp2)/2;
hd= sinc(wc2*(n-a)/pi)*wc2/pi -sinc(wc1*(n-a)/pi)*wc1/pi ;

h= hd .* kaiser(M,B)' ;
N=1024;w=[0:N-1]*2/N - 1;
figure(1);

figure(1);subplot(211);stem(n,h);title('IR');
subplot(212);plot(w,abs(fftshift(fft(h,N))));title('Frequency Response');
