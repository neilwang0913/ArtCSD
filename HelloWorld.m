% Removes all variables from the current workspace, releasing them from system memory
clear;
% Display version information for all installed products
ver;
% Clear Command Window
clc;
% Display contents
disp('Hello,AI')
% 比较计算性能好坏，时间是最好的标准
% comparing with diff time comsuption
tic
A = rand(12000,6666);
B = rand(12000,8888);
toc
