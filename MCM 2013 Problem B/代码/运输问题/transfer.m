clear all; clc; close all;

%��ȡ�ɱ�����
c = xlsread('cost.xlsx');
[rows, cols] = size(c);

%��ȡȱ��
supplydemand = xlsread('supplydemand.xlsx');

%����������
a = supplydemand(:, 1);
a(isnan(a)) = [];
b = supplydemand(:, 2);
b(isnan(b)) = [];
totala = sum(a);
totalb = sum(b);

E = totala - totalb;

x = zeros(rows, cols);

% if(E==0)
%     Aeq = ;
%     beq = [a; b];
%     LB = zeros(1, rows*cols);
%     [x, fval] = linprog(c, [], [], Aeq, beq, LB);
% elseif (E>0)   %��Ӧ��������
%     Aeq = ;
%     beq = [a; b];
%     LB = zeros(1, rows*cols);
%     [x, fval] = linprog(c, [], [], Aeq, beq, LB);                                                                                                                                                                                                                   
% else           %��ӦС������
%         [x, fval] = linprog();
% end



