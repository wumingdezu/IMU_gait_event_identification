%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   ����˵������ȡ�����ļ��� ���߼����ҵ� TOHS
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Clear all data
clear;
clc;

% Results
speed = [1 2 3 4 5 6];

TO_results = [
    -38 -41 -28 -37 -50 -61 -31 -46 -45 -28 -45 -54
    -32 -21 -44 -35 -52 -78 -35 -46 -48 -50 -72 -63
    -21 -11 -23 -33 -29 -24 -40 -37 -40 -44 -53 -58
    -11 -1  -2  -15 -24 -20 -26 -18 -26 -23 -27 -22
    -15  6   5  -12   0 -16 -12 -11 -32 -16 -27 -27];

HS_results = [
    119 130 120 131 117 136 111 120 131 101 122 138
    112 125 140 96 135 95 99 88 128 89 75 76
    60 81 88 96 74 102 74 75 57 90 50 81
    67 78 81 79 48 89 73 78 89 52 57 62
    54 44 56 82 67 51 66 47 36 40 31 40];

%   display data
subplot(1, 2, 1);
boxplot(TO_results');
title('TO points time error');
xlabel('Walking speed [m/s]');
ylabel('Time Error [ms]');
set(gca,'xticklabel',{'0.56' '0.83' '1.11' '1.38' '1.67'});
subplot(1, 2, 2);
boxplot(HS_results');
title('HS points time error');
xlabel('Walking speed [m/s]');
ylabel('Time Error [ms]');
set(gca,'xticklabel',{'0.56' '0.83' '1.11' '1.38' '1.67'});