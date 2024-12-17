clc
clear
close

vertices=[0.1 0.2;0.3 0.5];
Gauss_type=8;
result=generate_Gauss_line('fxy',vertices,Gauss_type)


[Gauss_coefficient_reference_1D,Gauss_point_reference_1D]=generate_Gauss_reference_1D(Gauss_type);

[Gauss_weights,Gauss_nodes]=generate_Gauss_2D_line(vertices,Gauss_coefficient_reference_1D,Gauss_point_reference_1D);
% feval('fxy',Gauss_nodes(1,:),Gauss_nodes(2,:))

result1=Gauss_weights*feval('fxy',Gauss_nodes(1,:),Gauss_nodes(2,:))'