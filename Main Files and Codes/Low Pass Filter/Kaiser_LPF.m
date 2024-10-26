%% LPF using Keiser

clc;clear all;close all;

wp =1.8;ws = 2.2;dp=0.05;ds =0.005;
del= min(dp,ds);A =-20*log10(del);

if A>=50
B= 0.1102*(A-8.7);
elseif A >=21 && A<=50
B =0.5842*(A-21)^0.4+0.07886*(A-21);
else B=0;
end

M = ceil(1+(A-8)/(2.285*(ws-wp)));
n=0:M-1; wc =(wp+ws)/2;
h =(wc/pi)*(sinc(wc*(n-(M-1)/2)/pi)).*kaiser(M,B)';

figure(1);subplot(211);stem(n,h);title('IR');
N=1024;w=linspace(-pi,pi,N);

subplot(212);plot(w,abs(fftshift(fft(h,N))));
title('Freq Response');