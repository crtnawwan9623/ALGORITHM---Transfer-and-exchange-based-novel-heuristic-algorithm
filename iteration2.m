warning('off');
clc
clear
%figure 9
global D;
global G; %number of gateway
global Eb;
global TN; % task number base
global TNmin;
global Ct;
D=8;
TN=1;
TNmin=1;
G=3;
Eb=0.001;
Ct=737.5;

G_g=[2,3,4,5,6,7,8,9,10,11];
%G_g=[11];
for ite2=1:length(G_g)
G=G_g(ite2);
Algo4_1;
E_sumg(ite2)=E_sum;
H_sumg(ite2)=H_sum;
G_sumg(ite2)=G_sum;
R_sumg(ite2)=R_sum;

mean_tevg(ite2)=mean_tev;
mean_thvg(ite2)=mean_thv;
mean_tgvg(ite2)=mean_tgv;
mean_trvg(ite2)=mean_trv;

varsm_eg(ite2)=varsm_e;
varsm_hg(ite2)=varsm_h;
varsm_gg(ite2)=varsm_g;
varsm_rg(ite2)=varsm_r;

end

plot(G_g,E_sumg,'r-x',G_g,H_sumg,'b--o',G_g,G_sumg,'k-s',G_g,R_sumg,'m--*','markersize',10,'linewidth',1.5);
axis([2 11,-inf,inf]);
set(gca,'FontSize',14);
xlabel('Number of tasks','fontsize',14);
ylabel('Average value of service','fontsize',14);
set(gca,'Fontname','times new Roman');
leng1=legend('Exhaus.','Heuris.','Greedy','Random');
set(leng1,'position',[0.16904762208107 0.669444450121077 0.192857139823692 0.203571422894796]);
grid;

% figure
% plot(D_g,-mean_tevg,'r-x',D_g,-mean_thvg,'b--o',D_g,-mean_tgvg,'k-s',D_g,-mean_trvg,'m--*','markersize',10,'linewidth',1.5);
% set(gca,'FontSize',14);
% xlabel('Number of device','fontsize',14);
% ylabel('Logarithmic average running time','fontsize',14);
% set(gca,'Fontname','times new Roman');
% leng1=legend('Exhaus.','Heuris.','Greedy','Random');
% set(leng1,'position',[0.174404764938213 0.678968259644887 0.192857139823692 0.203571422894796]);


figure;
plot(G_g,mean_tevg,'r-x',G_g,mean_thvg,'b--o',G_g,mean_tgvg,'k-s',G_g,mean_trvg,'m--*','markersize',10,'linewidth',1.5);
set(gca,'YScale','log');
axis([2 11,-inf,inf]);
set(gca,'FontSize',14);
xlabel('Number of tasks','fontsize',14);
ylabel('Average running time (s)','fontsize',14);
set(gca,'Fontname','times new Roman');
leng1=legend('Exhaus.','Heuris.','Greedy','Random');
set(leng1,'position',[0.174404764938213 0.678968259644887 0.192857139823692 0.203571422894796]);
grid;

figure;
plot(G_g,varsm_hg,'b--o',G_g,varsm_gg,'k-s',G_g,varsm_rg,'m--*','markersize',10,'linewidth',1.5);
set(gca,'YScale','log');
axis([2 11,-inf,inf]);
set(gca,'FontSize',14);
xlabel('Number of tasks','fontsize',14);
ylabel('Performance variance','fontsize',14);
set(gca,'Fontname','times new Roman');
leng1=legend('Heuris.','Greedy','Random');
set(leng1,'position',[0.626190479223927 0.21230159297822 0.192857139823692 0.203571422894796]);
grid;