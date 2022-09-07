%
% Author       : Yulong Wang
% Date         : 2021-11-08 20:19:59
% LastEditors  : Yulong Wang
% LastEditTime : 2022-04-01 19:35:14
% FilePath     : \worksc:\Users\WYL\Documents\template\work\2_solution\program\vis.m
% Description  :

grid on
hold on

plot(x,y,'xr','MarkerSize',12,'LineWidth',1);       % 原数据
plot(x,GRS(1)*x + GRS(2),'--b','linewidth',0.5);   % 拟合

XL = "$" + fig.xlb + "\; / \mathrm{" + fig.xut + "}$";
xlabel(XL,'Interpreter','LaTex','FontSize',16);
YL = "$" + fig.ylb + "\; / \mathrm{" + fig.yut + "}$" ;
ylabel(YL,'Interpreter','LaTex','FontSize',16);

xlim([0.5 5.5]);
ylim([200 2600]);

legend('data','fit','Interpreter','tex',...
        'FontSize',14,...
        'Position',[0.2,0.7,0.23,0.15]);    % [x_left,y_bottom,x_length,y_length]