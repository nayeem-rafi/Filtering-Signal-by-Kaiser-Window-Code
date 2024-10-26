%% LPF TO HPF KEISER

clc;clear all;close all;

wp =0.6*pi;ws = 0.7*pi;dp=0.05;ds=0.001;
del= min(dp,ds);A =-20*log10(del);

if A>=50
B= 0.1102*(A-8.7);
elseif A >=21 && A<=50
B =0.5842*(A-21)^0.4+0.07886*(A-21);
else B=0;
end

M = ceil(1+((A-8)/(2.285*(ws-wp))));
if (mod(M,2)==0)
M=M+1;
end

n=0:M-1; wc =(wp+ws)/2;
h = (wc/pi)*(sinc(wc*(n-(M-1)/2)/pi)).*kaiser(M,B)';
delta=zeros(1,length(n));

delta(n==(M-1)/2)=1;
h_hpf=delta-h;

figure(1);subplot(211);stem(n,h);title('IR');
N=1024;w=linspace(-pi,pi,N);

subplot(212);plot(w,abs(fftshift(fft(h_hpf,N))));title('Freq Response');