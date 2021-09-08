warning('off');
clc
clear
%figure 10_old
global D;
global G; %number of gateway
global Eb;
global TN; % task number base
global TNmin;
global Ct;
D=6;
TN=4;
TNmin=2;
G=3;
Eb=0.001;
Ct=737.5;

G_g=[2,3,4,5,6,7,8,9,10];
%G_g=[2];
for ite3=1:length(G_g)
G=G_g(ite3);
Algo4_1;
E_sumg(ite3)=E_sum;
H_sumg(ite3)=H_sum;
G_sumg(ite3)=G_sum;
R_sumg(ite3)=R_sum;

mean_tevg(ite3)=mean_tev;
mean_thvg(ite3)=mean_thv;
mean_tgvg(ite3)=mean_tgv;
mean_trvg(ite3)=mean_trv;

varsm_eg(ite3)=varsm_e;
varsm_hg(ite3)=varsm_h;
varsm_gg(ite3)=varsm_g;
varsm_rg(ite3)=varsm_r;
end

plot(G_g,H_sumg,'b--o',G_g,G_sumg,'k-s',G_g,R_sumg,'m--*','markersize',10,'linewidth',1.5);
%axis([2 11,-inf,inf]);
set(gca,'FontSize',14);
xlabel('Number of gateways','fontsize',14);
ylabel('Average value of service','fontsize',14);
set(gca,'Fontname','times new Roman');
leng1=legend('Heuris.','Greedy','Random');
set(leng1,'position',[0.551190479223927 0.224206354882982 0.192857139823692 0.203571422894796]);
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
plot(G_g,mean_thvg,'b--o',G_g,mean_tgvg,'k-s',G_g,mean_trvg,'m--*','markersize',10,'linewidth',1.5);
set(gca,'YScale','log');
%axis([2 11,-inf,inf]);
set(gca,'FontSize',14);
xlabel('Number of gateways','fontsize',14);
ylabel('Average running time (s)','fontsize',14);
set(gca,'Fontname','times new Roman');
leng1=legend('Heuris.','Greedy','Random');
set(leng1,'position',[0.610119050652499 0.531349212025839 0.192857139823692 0.203571422894796]);
grid;

figure;
plot(G_g,varsm_hg,'b--o',G_g,varsm_gg,'k-s',G_g,varsm_rg,'m--*','markersize',10,'linewidth',1.5);
set(gca,'YScale','log');
set(gca,'FontSize',14);
xlabel('Number of gateways','fontsize',14);
ylabel('Performance variance','fontsize',14);
set(gca,'Fontname','times new Roman');
leng1=legend('Heuris.','Greedy','Random');
set(leng1,'position',[0.663690479223927 0.702777783454411 0.192857139823692 0.203571422894796]);
grid;
