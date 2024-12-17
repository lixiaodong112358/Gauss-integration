clc
clear
close

%%本脚本用于计算任意一个矩形的积分
vertices_rectangle=[10,10;12,10;12,12;10,12;]';
Gauss_point_number=16;
[Gauss_point_reference_rectangle,Gauss_coefficient_reference_rectangle]=generate_Gauss_reference_rectangle(Gauss_point_number);
[Xi,Ai]=generate_Gauss_local_rectangle(Gauss_coefficient_reference_rectangle,Gauss_point_reference_rectangle,vertices_rectangle);
value=0;
for i=1:Gauss_point_number
    
    value=Ai(i)*f(Xi(i,1),Xi(i,2))+value;
    
end

value