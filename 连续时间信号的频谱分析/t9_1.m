clear;
while 1
    syms t f n 
    Nf=32;
    Nn=6;
    T = input('T=');
    tao_2= input('tao=');
    %T = T *2*pi;
    %tao = tao *2*pi;
    f = t*(heaviside(t) - heaviside(t + tao_2));
    A(1) = 1/T * int(f, t, (tao_2-T)/2, (T+tao_2)/2);
    Fs(1) = 0;
    y = 0;
    A0=int(f,t,-tao_2,T-tao_2)/T;
    As=int(f*2*cos(2*pi*t/T)/T,t,-tao_2,T-tao_2);
    Bs=int(f*2*sin(2*pi*n*t/T)/T,t,-tao_2,T-tao_2);
    for k=1:Nf
        A(k+1)=double(vpa(subs(As,n,k),Nn));
        B(k+1)=double(vpa(subs(Bs,n,k),Nn));
    end
    Fs(1) = A(1);
    Fs(2:Nf+1) = abs((A(2:Nf+1) - 1i.*B(2:Nf+1))/2);
    w=0.01;
    N = Nf*w;
    K = -N:w:N;
    Fd = [fliplr(Fs), Fs(2:Nf+1)];
    stem(K, Fd);
end