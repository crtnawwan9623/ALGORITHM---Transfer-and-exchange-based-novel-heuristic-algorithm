warning('off');
clc
clear
%figure 11
global D;
global G; %number of gateway
global Eb;
global TN; % task number base
global TNmin;
global Ct;
global minv_curd;
global maxv_curd;
D=10;
TN=2;
TNmin=1;
G=4;
Eb=0.001;
Ct=737.5;


Value_g=[0,0.1;0.1,0.2;0.2,0.3;0.3,0.4;0.4,0.5;0.5,0.6;0.6,0.7;0.7,0.8;0.8,0.9;0.9,1.0;];
%Value_g=[0.1,0.2];

for ite5=1:size(Value_g,1)
minv_curd=Value_g(ite5,1);
maxv_curd=Value_g(ite5,2);
Algo4_3;

DevEvPrEg(ite5)=DevEvPr_E;
DevEvPrHg(ite5)=DevEvPr_H;
DevEvPrGg(ite5)=DevEvPr_G;
DevEvPrRg(ite5)=DevEvPr_R;

DeVe_g(ite5)=mean_DeVe;
DeVh_g(ite5)=mean_DeVh;
DeVg_g(ite5)=mean_DeVg;
DeVr_g(ite5)=mean_DeVr;
save('figure11_tmp.mat');
end

Value_gg=0.0:0.1:0.9;

plot(Value_gg,DevEvPrEg,'r-x',Value_gg,DevEvPrHg,'b--o',Value_gg,DevEvPrGg,'k-s',Value_gg,DevEvPrRg,'m--*','markersize',10,'linewidth',1.5);
set(gca,'FontSize',14);
axis([0.0 0.9,-inf,inf]);
set(gca, 'XTick', [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9])
set(gca,'XTickLabel',{'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9'})
xlabel('Min value of mobile device in value function','fontsize',14);
ylabel('Execution probability','fontsize',14);
set(gca,'Fontname','times new Roman');
leng1=legend('Exhaus.','Heuris.','Greedy','Random');
set(leng1,'position',[0.676190479223927 0.469444450121077 0.192857139823692 0.203571422894796]);
grid;

figure
plot(Value_gg,DeVe_g,'r-x',Value_gg,DeVh_g,'b--o',Value_gg,DeVg_g,'k-s',Value_gg,DeVr_g,'m--*','markersize',10,'linewidth',1.5);
set(gca,'FontSize',14);
axis([0.0 0.9,-inf,inf]);
set(gca, 'XTick', [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9])
set(gca,'XTickLabel',{'0','0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9'})
xlabel('Min value of mobile device in value function','fontsize',14);
ylabel('Average device value','fontsize',14);
set(gca,'Fontname','times new Roman');
leng1=legend('Exhaus.','Heuris.','Greedy','Random');
set(leng1,'position',[0.16904762208107 0.669444450121077 0.192857139823692 0.203571422894796]);
grid;

