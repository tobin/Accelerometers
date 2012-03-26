

data0 = dlmread('H1_plant0.txt');
data1 = dlmread('H1_plant1.txt');
data = [data0; data1];
data = sortrows(data, 1);

f = data(:,1);
H = data(:,2) + 1i*data(:,3);

fmodel=logspace(log10(0.1), log10(1000), 301);
[B,A] = invfreqs(H(f<3),2*pi*f(f<3),1,3);
Hmodel = freqs(B,A,2*pi*fmodel);

subplot(2,1,1);
semilogx(f, db(H),'.-', f, db(26*f.^-2), ...
  fmodel, db(Hmodel));
grid on
subplot(2,1,2)

tau = 3.5/2048;
semilogx(f, unwrap(angle(H))*180/pi,'.-', ...
     f, -190-f*tau*360,f,-180-f*360/2048, ...
   fmodel, unwrap(angle(Hmodel))*180/pi);

grid on

% 2 kHz decimation filter?
