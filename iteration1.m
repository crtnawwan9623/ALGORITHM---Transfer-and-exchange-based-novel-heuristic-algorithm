warning('off');
clc
clear
%figure 8
global D;
global G; %number of gateway
global Eb;
global TN; % task number base
global TNmin;
global Ct;
D=8;
TN=3;
TNmin=2;
G=3;
Eb=0.001;
Ct=737.5;

D_g=[2,3,4,5,6,7,8,9,10];
for ite1=1:length(D_g)
D=D_g(ite1);
Algo4_1;
E_sumg(ite1)=E_sum;
H_sumg(ite1)=H_sum;
G_sumg(ite1)=G_sum;
R_sumg(ite1)=R_sum;
 
mean_tevg(ite1)=mean_tev;
mean_thvg(ite1)=mean_thv;
mean_tgvg(ite1)=mean_tgv;
mean_trvg(ite1)=mean_trv;

varsm_eg(ite1)=varsm_e;
varsm_hg(ite1)=varsm_h;
varsm_gg(ite1)=varsm_g;
varsm_rg(ite1)=varsm_r;
save('figure8_tmp.mat');
end

plot(D_g,E_sumg,'r-x',D_g,H_sumg,'b--o',D_g,G_sumg,'k-s',D_g,R_sumg,'m--*','markersize',10,'linewidth',1.5);
set(gca,'FontSize',14);
xlabel('Number of mobile devices','fontsize',14);
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
plot(D_g,mean_tevg,'r-x',D_g,mean_thvg,'b--o',D_g,mean_tgvg,'k-s',D_g,mean_trvg,'m--*','markersize',10,'linewidth',1.5);
set(gca,'YScale','log');
set(gca,'FontSize',14);
xlabel('Number of devices','fontsize',14);
ylabel('Average running time (s)','fontsize',14);
set(gca,'Fontname','times new Roman');
leng1=legend('Exhaus.','Heuris.','Greedy','Random');
set(leng1,'position',[0.174404764938213 0.678968259644887 0.192857139823692 0.203571422894796]);
grid;


figure;
plot(D_g,varsm_hg,'b--o',D_g,varsm_gg,'k-s',D_g,varsm_rg,'m--*','markersize',10,'linewidth',1.5);
set(gca,'YScale','log');
set(gca,'FontSize',14);
xlabel('Number of mobile devices','fontsize',14);
ylabel('Performance variance','fontsize',14);
set(gca,'Fontname','times new Roman');
leng1=legend('Heuris.','Greedy','Random');
set(leng1,'position',[0.663690479223927 0.702777783454411 0.192857139823692 0.203571422894796]);
grid;