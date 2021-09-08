%Fig6 and Fig7
warning('off');
clc
clear

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

% D_g=[2 3 4 5 6 7 8];
% for ite=1:length(D_g)
% D=D_g(ite);
% Algo4_1;
% E_sumg(ite)=E_sum;
% H_sumg(ite)=H_sum;
% G_sumg(ite)=G_sum;
% R_sumg(ite)=R_sum;
% end

Algo4_1;
bar([E_sum,H_sum,G_sum,R_sum]);
xlabel('Algorithms','fontsize',14);
ylabel('Average value of service','fontsize',14);
set(gca,'FontSize',14);
set(gca, 'XTickLabel', {'Exhaus.','Heuris.','Greedy','Random'}  );
set(gca,'Fontname','times new Roman');
grid;

figure
bar([varsm_h,varsm_g,varsm_r]);
xlabel('Algorithms','fontsize',14);
ylabel('Performance variance','fontsize',14);
set(gca,'FontSize',14);
set(gca, 'XTickLabel', {'Heuris.','Greedy','Random'}  );
set(gca,'Fontname','times new Roman');
grid;

figure
bar([mean_tev,mean_thv,mean_tgv,mean_trv]);
set(gca,'YScale','log');
xlabel('Algorithms','fontsize',14);
ylabel('Average running time (s)','fontsize',14);
set(gca,'FontSize',14);
set(gca, 'XTickLabel', {'Exhaus.','Heuris.','Greedy','Random'} );
set(gca,'Fontname','times new Roman');
grid;

figure
bar([var_tev,var_thv,var_tgv,var_trv]);
set(gca,'YScale','log');
xlabel('Algorithms','fontsize',14);
ylabel('Variance of running time','fontsize',14);
set(gca,'FontSize',14);
set(gca, 'XTickLabel', {'Exhaus.','Heuris.','Greedy','Random'} );
set(gca,'Fontname','times new Roman');
grid;


% subplot(1,2,1)
% bar([E_sum,H_sum,G_sum,R_sum]);
% xlabel('Algorithms','fontsize',14);
% ylabel('Average value of service','fontsize',14);
% set(gca,'FontSize',14);
% set(gca, 'XTickLabel', {'Ex.','He.','Gr.','Ra.'}  );
% set(gca,'Fontname','times new Roman');
% grid;
% subplot(1,2,2)
% bar([varsm_h,varsm_g,varsm_r]);
% xlabel('Algorithms','fontsize',14);
% ylabel('Performance variance','fontsize',14);
% set(gca,'FontSize',14);
% set(gca, 'XTickLabel', {'He.','Gr.','Ra.'}  );
% set(gca,'Fontname','times new Roman');
% grid;

% figure
% bar([meansm_e,meansm_h,meansm_g,meansm_r]);
% xlabel('Algorithms','fontsize',14);
% ylabel('mean','fontsize',14);
% set(gca, 'XTickLabel', {'Exhaus.','Heuris.','Greedy','Random'}  );
% set(gca,'Fontname','times new Roman');

% figure
% bar([-log10(mean_tev),-log10(mean_thv),-log10(mean_tgv),-log10(mean_trv)]);
% xlabel('Algorithms','fontsize',14);
% ylabel('Logarithmic average running time','fontsize',14);
% set(gca,'FontSize',14);
% set(gca, 'XTickLabel', {'Exhaus.','Heuris.','Greedy','Random'} );
% set(gca,'Fontname','times new Roman');
% set(gca, 'YTick',[0.5 1 1.5 2 2.5 3 3.5 4 4.5 5 5.5], 'YTickLabel', {'-0.5','-1','-1.5','-2','-2.5','-3','-3.5','-4','-4.5','-5','-5.5'});
% grid;

% figure
% bar([-log10(var_tev),-log10(var_thv),-log10(var_tgv),-log10(var_trv)]);
% xlabel('Algorithms','fontsize',14);
% ylabel('Logarithmic variance of running time','fontsize',14);
% set(gca,'FontSize',14);
% set(gca, 'XTickLabel', {'Exhaus.','Heuris.','Greedy','Random'} );
% set(gca,'Fontname','times new Roman');
% set(gca, 'YTick',[1 2 3 4 5 6 7 8 9 10], 'YTickLabel', {'-1','-2','-3','-4','-5','-6','-7','-8','-9','-10'});
% grid;

% figure
% bar([mean_thv,mean_tgv,mean_trv]);
% xlabel('Algorithms','fontsize',14);
% ylabel('Average running time (s)','fontsize',14);
% set(gca,'FontSize',14);
% set(gca, 'XTickLabel', {'Heuris.','Greedy','Random'} );
% set(gca,'Fontname','times new Roman');
% grid;
% 
% figure
% bar([var_thv,var_tgv,var_trv]);
% xlabel('Algorithms','fontsize',14);
% ylabel('Variance of running time','fontsize',14);
% set(gca,'FontSize',14);
% set(gca, 'XTickLabel', {'Heuris.','Greedy','Random'} );
% set(gca,'Fontname','times new Roman');
% grid;

