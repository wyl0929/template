%
% Author       : Yulong Wang
% Date         : 2021-11-14 19:04:24
% LastEditors  : Yulong Wang
% LastEditTime : 2022-05-06 19:02:22
% FilePath     : \物理c:\Users\WYL\Documents\template\work\2_solution\program\main.m
% Description  :


rho = 5;
E = 3.5;    %GeV
E_c = 2.22*E^3/rho;
lambda_c = (4/3)*pi*rho*(E_c/E)^3;

function GRS = linear(x,y)
    % 最小二乘拟合

    Lxx=sum((x-mean(x)).^2);
    Lxy=sum((x-mean(x)).*(y-mean(y)));
    b1=Lxy/Lxx;
    b0=mean(y)-b1*mean(x);
    y1=b1*x+b0;
    R_2 = 1-sum((y1-y).^2./y1);
    GRS = [b1,b0,R_2];

    fprintf('linear RGS for x,y:\n b1 = %.4f; b0 = %.4f ;R^2 = %.6f \n',b1,b0,R_2);

end