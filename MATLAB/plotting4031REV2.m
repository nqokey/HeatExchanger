% Data
LMTD = [20.68119265,
32.95891531,
37.2333841,
42.43010436,
47.24434923,
49.94252501,
55.57743998,
59.83238451,
64.74504528,
66.11838332,
73.5337508];
U = [1.883111952,
6.798015553,
14.94326688,
17.15208121,
23.11492695,
18.63218,
16.78255066,
17.2493212,
18.80443126,
21.05512779,
25.44409701];
Epsilon = [0.01103654455,
0.03981611469,
0.08593236256,
0.09800637206,
0.129737917,
0.1041334633,
0.09428289071,
0.09599085098,
0.1054321538,
0.114395976,
0.1367529737];
qmax = [6.414241674,
36.90189455,
91.63716871,
119.8628289,
179.8605825,
153.2596276,
153.620829,
169.9816027,
200.5212212,
229.2839774,
308.1536817];

% Common settings
markerSize = 8;
lineWidth = 2;
fontSize = 14;
labelInterpreter = 'latex';

%% Plot 1: Overall Heat Transfer Coefficient vs LMTD
figure;
plot(LMTD, U, '-o', 'LineWidth', lineWidth, 'MarkerSize', markerSize, ...
    'Color', [0.47, 0, 0.098], 'MarkerFaceColor', [0.7, 0.3, 0.3]);
xlabel('Log Mean Temperature Difference ($^\circ$C)', ...
    'FontSize', fontSize, 'Interpreter', labelInterpreter);
ylabel('Overall Heat Transfer Coefficient (W\, m$^{-2}$\, K$^{-1}$)', ...
    'FontSize', fontSize, 'Interpreter', 'latex');
grid on; box on;
set(gca, 'FontSize', fontSize, 'LineWidth', 1.2, 'TickDir', 'out');
axis padded;
exportgraphics(gcf, 'U_plot.pdf', 'ContentType', 'vector');

%% Plot 2: Maximum Heat Transfer Rate vs LMTD
figure;
plot(LMTD, qmax, '-s', 'LineWidth', lineWidth, 'MarkerSize', markerSize, ...
    'Color', [0, 0, 0], 'MarkerFaceColor', [0.4, 0.4, 0.4]);
xlabel('Log Mean Temperature Difference ($^\circ$C)', ...
    'FontSize', fontSize, 'Interpreter', labelInterpreter);
ylabel('Maximum Heat Transfer Rate (W)', ...
    'FontSize', fontSize, 'Interpreter', labelInterpreter);
grid on; box on;
set(gca, 'FontSize', fontSize, 'LineWidth', 1.2, 'TickDir', 'out');
axis padded;
exportgraphics(gcf, 'qmax_plot.pdf', 'ContentType', 'vector');

%% Plot 3: Effectiveness vs LMTD
figure;
plot(LMTD, Epsilon, '-^', 'LineWidth', lineWidth, 'MarkerSize', markerSize, ...
    'Color', [0, 0.6, 1], 'MarkerFaceColor', [0.4, 0.8, 1]);
xlabel('Log Mean Temperature Difference ($^\circ$C)', ...
    'FontSize', fontSize, 'Interpreter', labelInterpreter);
ylabel('Effectiveness $\varepsilon$', ...
    'FontSize', fontSize, 'Interpreter', labelInterpreter);
grid on; box on;
set(gca, 'FontSize', fontSize, 'LineWidth', 1.2, 'TickDir', 'out');
axis padded;
exportgraphics(gcf, 'epsilon_plot.pdf', 'ContentType', 'vector');
