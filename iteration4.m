warning('off');
clc
clear
%figure 10
global D;
global G; %number of gateway
global Eb;
global TN; % task number base
global TNmin;
global Ct;
global minv_cur;
global maxv_cur;
D=5;
TN=3;
TNmin=2;
G=3;
Eb=0.001;
Ct=737.5;


Value_g=[0,0.1;0.1,0.2;0.2,0.3;0.3,0.4;0.4,0.5;0.5,0.6;0.6,0.7;0.7,0.8;0.8,0.9;0.9,1.0;];
%Value_g=[0.1,0.2];

for ite4=1:size(Value_g,1)
minv_cur=Value_g(ite4,1);
maxv_cur=Value_g(ite4,2);
Algo4_2;

TskEvPrEg(ite4)=TskEvPr_E;
TskEvPrHg(ite4)=TskEvPr_H;
TskEvPrGg(ite4)=TskEvPr_G;
TskEvPrRg(ite4)=TskEvPr_R;

TskVe_g(ite4)=mean_TskVe;
TskVh_g(ite4)=mean_TskVh;
TskVg_g(ite4)=mean_TskVg;
TskVr_g(ite4)=mean_TskVr;
save('figure10_tmp.mat');
end

Value_gg=0.0:0.1:0.9;

plot(Value_gg,TskEvPrEg,'r-x',Value_gg,TskEvPrHg,'b--o',Value_gg,TskEvPrGg,'k-s',Value_gg,TskEvPrRg,'m--*','markersize',10,'linewidth',1.5);
set(gca,'FontSize',14);
axis([0.0 0.9,-inf,inf]);
set(gca, 'XTick', [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9])
set(gca,'XTickLabel',{'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9'})
xlabel('Min value of task in value function','fontsize',14);
ylabel('Execution probability','fontsize',14);
set(gca,'Fontname','times new Roman');
leng1=legend('Exhaus.','Heuris.','Greedy','Random');
set(leng1,'position',[0.16904762208107 0.669444450121077 0.192857139823692 0.203571422894796]);
grid;

figure
plot(Value_gg,TskVe_g,'r-x',Value_gg,TskVh_g,'b--o',Value_gg,TskVg_g,'k-s',Value_gg,TskVr_g,'m--*','markersize',10,'linewidth',1.5);
set(gca,'FontSize',14);
axis([0.0 0.9,-inf,inf]);
set(gca, 'XTick', [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9])
set(gca,'XTickLabel',{'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9'})
xlabel('Min value of task in value function','fontsize',14);
ylabel('Average task value','fontsize',14);
set(gca,'Fontname','times new Roman');
leng1=legend('Exhaus.','Heuris.','Greedy','Random');
set(leng1,'position',[0.16904762208107 0.669444450121077 0.192857139823692 0.203571422894796]);
grid;

