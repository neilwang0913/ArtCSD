% Demo.m - MATLAB 基础功能演示脚本
% 结合了清理、计时、数据处理与可视化的完整示例

%% 1. 环境准备 (Data input & Environment Setup)
clear; % 清除工作区变量
clc;   % 清除命令行窗口
disp('开始 MATLAB 演示程序...');

%% 2. 数据生成与性能测试 (Data processing & About Time)
disp('正在生成模拟数据...');
tic; % 开始计时
% 模拟生成一个包含噪声的正弦波信号
x = 0:0.1:10*pi;
y_true = sin(x);
noise = 0.5 * randn(size(x));
y_noisy = y_true + noise;
t = toc; % 结束计时
fprintf('数据生成完毕，耗时: %.4f 秒\n', t);

%% 3. 数据处理 (Data processing - 简单平滑滤波)
disp('正在处理数据 (平滑滤波)...');
windowSize = 5; 
b = (1/windowSize)*ones(1,windowSize);
a = 1;
y_filtered = filter(b, a, y_noisy);

%% 4. 可视化 (Virtualization / Visualization)
disp('正在生成可视化图表...');
figure;
plot(x, y_noisy, 'r.', 'DisplayName', '含噪数据 (Noisy)');
hold on;
plot(x, y_true, 'k-', 'LineWidth', 2, 'DisplayName', '真实信号 (True)');
plot(x, y_filtered, 'b-', 'LineWidth', 2, 'DisplayName', '滤波后数据 (Filtered)');
title('信号处理与滤波演示');
xlabel('时间 (Time)');
ylabel('振幅 (Amplitude)');
legend('show');
grid on;
hold off;

%% 5. 得出结论 (Conclusion)
disp('演示程序运行完毕！请查看弹出的图表窗口。');
