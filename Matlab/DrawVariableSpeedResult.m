%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   ����˵�������Ʊ����ٶ�ʱ�ļ��������
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
x = [...
    0.56 0.56 0.56 0.56 0.56 ...
    0.83 0.83 0.83 0.83 0.83 ...
    1.11 1.11 1.11 1.11 1.11 ...
    1.38 1.38 1.38 1.38 1.38 ...
    1.67 1.67 1.67 1.67 1.67];
y = [...
    0.56 0.83 1.11 1.38 1.67 ...
    0.56 0.83 1.11 1.38 1.67 ...
    0.56 0.83 1.11 1.38 1.67 ...
    0.56 0.83 1.11 1.38 1.67 ...
    0.56 0.83 1.11 1.38 1.67];
z = [...
    99.8    99.9    100     100     100 ...
    99.8    100     100     100     100 ...
    99.9    99.9    100     99.9    100 ...
    100     100     100     100     100 ...
    99.8    100     99.9    100     100 ...
    ];

[X,Y,Z] = griddata(x,y,z,linspace(min(x),max(x))',linspace(min(y),max(y)),'cubic');%��ֵ
[row, col] = find(Z > 100)
for i = 1 : 1 : length(row)
    Z(row(i), col(i)) = 100;
end
pcolor(X,Y,Z);
shading interp %α��ɫͼ

% figure();
% contourf(X,Y,Z) %�ȸ���ͼ

% figure();
% mesh(X,Y,Z) %��ά��������
xlabel('Original Speed [m/s]');
ylabel('Destined Speed [m/s]');
zlabel('Reliability [%]');
xlim([0.56 1.67]);
ylim([0.56 1.67]);
zlim([0 100])

% figure();
% surf(X,Y,Z) %��ά��������